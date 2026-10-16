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
