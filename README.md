# Discourse Filesharing Plugin

This repository hosts the `discourse-filesharing` plugin built in phased steps. It currently exposes a `/media/health` endpoint and an Ember placeholder page at `/media` to verify plugin wiring.

## Installation
1. Clone into the Discourse plugins directory (e.g. `/var/discourse/plugins/discourse-filesharing`).
2. Reference the repository in `app.yml` under `hooks.after_code`.
3. Rebuild the container: `./launcher rebuild app`.
4. Visit `/media/health` for a simple JSON health response and `/media` for the placeholder page.

## Resolving conflicts with `main`
If this branch conflicts with your `main` branch, rebase or merge it onto the latest mainline:
```bash
git fetch origin
# Option A: rebase for a linear history
git checkout work
git rebase origin/main
# Option B: merge if you prefer to preserve merge commits
git checkout work
git merge origin/main
```
Resolve any reported conflicts in your editor, then continue the rebase (`git rebase --continue`) or complete the merge (`git commit`). Afterward, rebuild the container to pick up the updated plugin code.

## Notes
- The plugin’s routes are guarded by the `media_enabled` site setting on the client to avoid interfering with routing when disabled.
- The `/media` path is served by Discourse’s SPA to ensure direct navigation works alongside plugin API routes.
