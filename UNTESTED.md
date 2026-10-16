# Untested changes

Changes made in cloud sessions that could not be fully tested there. Delete an item once it is tested.

## 2026-10-16 - quick fixes (branch web-quick-fixes)

- `.dev/compile_web.sh`: `UNTESTED.md` and `*.xcf` left out of the upload. Run on a scratch copy with
  Ubuntu's tidy 5.6 and csstidy, not on the build host; the real upload was not run.
- `dnt_download.html`: the no-JavaScript fallback link for "Not now, take me to the download". Checked in
  headless Chromium with JavaScript on and off, not on the live site.
- `armdesktop/index.html`: favicon path. The file exists at the new path; not checked in a browser tab.
- `style/blue.css`: dropped the missing `main.png` background. Screenshots were pixel-identical locally;
  not checked on the live site.

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
