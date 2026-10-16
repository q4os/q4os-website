# Untested changes

Changes made in cloud sessions that could not be fully tested there. Delete an item once it is tested.

## 2026-10-16 - lighter images (branch web-images)

- Lossless recompression of 55 JPG/PNG files (jpegoptim, optipng): every file decodes to exactly the same
  pixels as before (ImageMagick compare); not checked in browsers other than Chromium.
- New thumbnails in `style/thumbs/` and `armdesktop/thumbs/` for the 300x200 screenshots on `index.html`,
  `business.html` and `armdesktop/index.html`: checked in headless Chromium (screenshots near-identical,
  links still open the full images); not checked on the live site.
- Crypto logos and the Patreon button resized in place to twice their display size: checked in headless
  Chromium; not checked on the live site or on a high-density screen.
