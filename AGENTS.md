# AGENTS.md

Instructions for AI agents (and humans) working in this repository.

## What this repository is

`outscale/homebrew-tap` is the official Homebrew tap for Outscale tools. Each
file in `Formula/` is a Homebrew formula; the tap exposes them as
`brew install outscale/tap/<formula>`.

* `Formula/*.rb` — one formula per published project. This is the source of truth.
* `README.md` — the "Available Projects" table between the
  `<!-- BEGIN PROJECTS -->` / `<!-- END PROJECTS -->` markers is **generated**.
* `scripts/update-readme.sh` — regenerates that table from `Formula/*.rb`.
* `.github/workflows/readme.yml` — CI job that fails when the README is stale.

## Rule: keep the projects table in sync

Any change to `Formula/` must be committed together with the regenerated README.
This applies to **adding**, **removing**, **renaming**, and **editing the `desc` or
`homepage`** of a formula.

After such a change, run from the repository root:

```bash
./scripts/update-readme.sh
```

Then commit `README.md` alongside the formula change. Do not hand-edit the table:
formula names, descriptions, repositories and install commands are all derived
from the formula file.

### Checklist when adding a formula

1. Create `Formula/<name>.rb` with a single-line `desc "..."` and a
   `homepage "..."` pointing at the upstream repository. The generator fails
   without both.
2. Add the formula to the README: `./scripts/update-readme.sh`.
3. Verify locally:

   ```bash
   brew reinstall --build-from-source ./Formula/<name>.rb
   brew audit --new --strict ./Formula/<name>.rb
   brew test ./Formula/<name>.rb
   ./scripts/update-readme.sh --check
   ```

4. Open a PR containing the formula **and** the README change.

### Checklist when removing a formula

1. Delete `Formula/<name>.rb`.
2. Run `./scripts/update-readme.sh`.
3. Grep for leftover references (other formulae, workflows, README):
   `grep -rn "<name>" . --exclude-dir=.git`

## Verifying without writing

`--check` never modifies files; it exits non-zero when the README is stale:

```bash
./scripts/update-readme.sh --check
```

Run it before reporting work as complete. It is the same command CI runs, so a
green local run means the README job will pass.

## Conventions

* Commits and PR titles use gitmoji + conventional prefix, e.g.
  `🐛 fix: correct osc-tui sha256`, `🚀 osc-logs v0.1.3`.
* Follow [AI_POLICY.md](./AI_POLICY.md): read, understand and test anything you
  submit. Unreviewed generated output is not accepted.
