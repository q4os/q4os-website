# Untested changes

Changes made in cloud sessions that could not be fully tested there. Delete an item once it is tested.

## 2026-10-16 - content, SEO, accessibility (branch web-seo-a11y)

- New `<title>` and `<meta name="description">` on 25 pages: checked in the source and the compiled copy, not
  in search results.
- `sitemap.xml` and the `Sitemap:` line in `robots.txt`: valid XML and every URL exists in the repo; not
  submitted to or read by a search engine, and not checked on the live server.
- Hidden site-name `<h1>` in the banner (`.hidden_text`): pixel-identical in headless Chromium at
  900-1920 px, and Chromium's accessibility tree shows it; not checked with a real screen reader.
- `a:focus-visible` outline instead of `a{outline: none}`: checked in headless Chromium (keyboard Tab shows
  it, mouse click does not); not checked in Firefox or Safari.
- New `alt` texts on `dnt_crypto.html`, `dnt_donate.html`, `armdesktop/index.html`: not checked with a screen
  reader. Payment links and form values on those pages are byte-identical to before.
- Heading and sidebar-link blue `#5468BE` (was `#5F74C7`): checked in headless Chromium only; not checked
  in Firefox or on the live site.
