# Untested changes

Changes made in cloud sessions that could not be fully tested there. Delete an item once it is tested.

## 2026-10-16 - mobile layout (branch web-mobile-layout)

- `style/narrow.css` plus the viewport meta and `<link media="(max-width: 899px)">` on 25 pages: checked
  in headless Chromium only (phone emulation at 360/390/768 px, desktop pixel comparison at 900-1920 px).
  Not checked on a real phone, in Firefox or Safari, or on the live site.
- Same change after `compile_web.sh`: built with Ubuntu's tidy 5.6 / csstidy 1.4-7 on a scratch copy, not
  on the build host.
- `index.html` / `style/style.css`: feature boxes moved from inline float/width to `.feat_left` /
  `.feat_right`; pixel-identical in Chromium at 900-1920 px, not checked in other browsers.
