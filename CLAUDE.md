# CLAUDE.md

This repo is one part of **Q4OS**, a lightweight Debian-based desktop OS (Trinity and Plasma desktops), and its
Ubuntu-based sibling **Quark**. One developer maintains it and there is no second reviewer, so what you hand back
must be easy to review. Stability and flawless upgrades of installed systems come first; users are often new to
Linux, on old hardware.

**On the Q4OS build host** (`/mnt/tmsworkspace` exists): follow `/mnt/tmsworkspace/CLAUDE.md`; it overrides this
file wherever they differ, and "Cloud sessions" below does not apply. The repo-specific notes at the end still do.

## Cloud sessions

- You have this repo only: no build host, sbuild chroots, apt repos, VMs or signing keys. You cannot build,
  package or install-test anything here. Say plainly what you could not verify.
- Deliver work as a **branch + pull request** (a findings report goes in the PR description or a `.md` file in
  it). Never push to the default branch, never merge, rebase or delete existing branches, never tag.
- Publish nothing: don't run or edit release, upload, deploy or publish scripts, and don't touch GitHub
  releases, Pages or repo settings.
- Record every change you could not test in `UNTESTED.md` at the repo root (dated, one item per change; create
  the file if missing). The owner deletes items once tested.

## Commits and pull requests

- Use the ambient git identity (`Q4OS Team <q4os@q4os.org>`). Never pass `-c user.name=` / `-c user.email=`.
- **No AI attribution anywhere:** no `Co-Authored-By: Claude` and no `Claude-Session:` trailer in commits; no
  "Generated with Claude Code" line in PR descriptions. A commit message ends with its last line of real content.

## Making changes

- Keep patches simple. If a change needs real complexity, stop and ask in the PR instead of building it.
- Don't delete code to tidy up. Remove only what is clearly obsolete, and ask when unsure.
- Weight is a feature: no new dependencies, services or large files without a stated reason.
- Don't fight Debian: follow Debian packaging conventions; diverge only through a clear, maintained patch.
- Never edit `debian/changelog` or version strings - the owner does version bumps. Versions only ever go up.
- Call Qt tools by explicit path, never by bare name: bare `lupdate` / `lrelease` / `uic` can resolve to TDE's
  TQt tools and silently corrupt `.ts` files. Qt5 `/usr/lib/qt5/bin/`, Qt6 `/usr/lib/qt6/bin/`.
- Shell scripts are POSIX `sh` unless the file says otherwise.

## This repo

Source of www.q4os.org (static HTML/CSS).

- This repo is the **source**; the live site is a minified copy (`.dev/compile_web.sh` -> tidy/csstidy) that the
  owner generates and uploads. Change sources only; never run `.dev/compile_web.sh` or any deploy step.
- Follow the existing markup style of the page you edit; no frameworks, trackers, external scripts or fonts.
- Version numbers, download links, checksums and prices must match what is really published - never guess
  them. If a value can't be verified, flag it in the PR instead of changing it.
- The shop and donation pages carry live payment links: don't change those links.
