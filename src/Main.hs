{-# LANGUAGE OverloadedStrings #-}
import           Data.Monoid      ((<>))
import           Hakyll
import           System.FilePath  (joinPath, splitPath, takeBaseName)
import qualified Text.Pandoc      as Pandoc
import qualified Text.Pandoc.Walk as Pandoc.Walk

main :: IO ()
main = hakyll $ do
    match "style/*.css" $ do
        route idRoute
        compile compressCssCompiler

    match "images/*" $ do
        route idRoute
        compile copyFileCompiler

    let simplePages =
            [ "content/index.md"
            , "content/faq.md"
            , "content/contact.md"
            , "content/tips.md"
            , "content/stipend.md"
            ]

    match (fromList simplePages) $ do
        route $ dropContentRoute `composeRoutes` setExtension "html"
        compile $
            anchorsPandocCompiler >>=
            loadAndApplyTemplate "templates/default.html" defaultContext >>=
            relativizeUrls

    match "content/news/*" $ version "plain" $
        -- A plain version just with the content.
        compile $ fmap demoteHeaders <$> pandocCompiler

    match "content/news/*" $ do
        route $ dropContentRoute `composeRoutes` setExtension "html"
        compile $ getUnderlying >>= newsPage . Just

    create ["content/news.html"] $ do
        route $ dropContentRoute `composeRoutes` setExtension "html"
        compile $ newsPage Nothing

    create ["news.xml"] $ do
        route idRoute
        compile $
            loadAll ("content/news/*" .&&. hasVersion "plain") >>=
            fmap (take 10) . recentFirst >>=
            renderRss newsRssConfig newsRssContext

    match "content/ideas.html" $ do
        route $ dropContentRoute `composeRoutes` setExtension "html"
        compile $
            getResourceString >>=
            applyAsTemplate ideasContext >>=
            loadAndApplyTemplate "templates/default.html" defaultContext >>=
            relativizeUrls

    match "content/ideas/*" $ compile $
        pandocCompiler >>=
        return . fmap (demoteHeaders . demoteHeaders)

    match "templates/*" $ compile templateCompiler

-- | Drop the `content/` part from a route.
dropContentRoute :: Routes
dropContentRoute = customRoute $ \ident ->
    let path0 = toFilePath ident in
    case splitPath path0 of
        "content/" : path1 -> joinPath path1
        _                  -> path0

-- | Our own pandoc compiler which adds anchors automatically.
anchorsPandocCompiler :: Compiler (Item String)
anchorsPandocCompiler = pandocCompilerWithTransform
    defaultHakyllReaderOptions
    defaultHakyllWriterOptions
    addAnchors

-- | Modifie a headers to add an extra anchor which links to the header.  This
-- allows you to easily copy an anchor link to a header.
addAnchors :: Pandoc.Pandoc -> Pandoc.Pandoc
addAnchors =
    Pandoc.Walk.walk addAnchor
  where
    addAnchor :: Pandoc.Block -> Pandoc.Block
    addAnchor (Pandoc.Header level attr@(id_, _, _) content) =
        Pandoc.Header level attr $ content ++
        [Pandoc.Link ("", ["anchor"], []) [Pandoc.Str "🔗"] ("#" <> id_, "")]
    addAnchor block = block

-- | Context for an individual "idea".
ideaContext :: Context String
ideaContext =
    field "slug" (\item -> do
        return $ takeBaseName $ toFilePath $ itemIdentifier item) <>
    defaultContext

-- | Context for the ideas page.
ideasContext :: Context String
ideasContext =
    listField "ideas" ideaContext (loadAll "content/ideas/*") <>
    defaultContext

newsPage :: Maybe Identifier -> Compiler (Item String)
newsPage mbIdent =
    makeItem "" >>=
    loadAndApplyTemplate "templates/news.html" (newsIndexContext focus) >>=
    loadAndApplyTemplate "templates/default.html" defaultContext >>=
    relativizeUrls
  where
    -- If 'mbIdent' is specified, use that news item, otherwise use the most
    -- recent one.
    focus = case mbIdent of
        Just i  -> do
            item <- load (setVersion (Just "plain") i)
            return [item]
        Nothing -> do
            items <- loadAll ("content/news/*" .&&. hasVersion "plain")
            take 1 <$> recentFirst items

newsContext :: Context String
newsContext =
    dateField "date" "%B %e, %Y" <>
    field "url" (\item -> do
        -- We hijack/override the "url" field to get the "url" field of the
        -- item without a version instead.  If we'd get the regular "plain"
        -- version, we would end up without a URL.
        mbRoute <- getRoute (setVersion Nothing $ itemIdentifier item)
        return $ maybe mempty toUrl mbRoute) <>
    defaultContext

newsIndexContext :: Compiler [Item String] -> Context String
newsIndexContext focus =
    listField "focus" newsContext focus <>
    listField "all" newsContext
        (loadAll ("content/news/*" .&&. hasVersion "plain") >>= recentFirst) <>
    defaultContext

newsRssConfig :: FeedConfiguration
newsRssConfig = FeedConfiguration
    { feedTitle       = "Summer of Haskell News"
    , feedDescription = "Newest Summest of Haskell posts"
    , feedAuthorName  = "Haskell.org committee"
    , feedAuthorEmail = "committee@haskell.org"
    , feedRoot        = "http://summer.haskell.org"
    }

newsRssContext :: Context String
newsRssContext = bodyField "description" <> newsContext
