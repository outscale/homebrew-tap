#!/usr/bin/env bash
#
# Regenerate the "Available projects" table in README.md from Formula/*.rb.
#
#   ./scripts/update-readme.sh          # rewrite the table in place
#   ./scripts/update-readme.sh --check  # fail if the table is out of date (CI)
#
set -euo pipefail

root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
cd "$root"

readme=README.md
begin_marker='<!-- BEGIN PROJECTS -->'
end_marker='<!-- END PROJECTS -->'
check=false
[[ ${1:-} == --check ]] && check=true

generate_table() {
  local file name desc repo

  echo '| Project | Description | Repository | Install |'
  echo '| --- | --- | --- | --- |'

  for file in Formula/*.rb; do
    name=$(basename "$file" .rb)
    desc=$(sed -n 's/^[[:space:]]*desc "\(.*\)"[[:space:]]*$/\1/p' "$file" | head -n 1)
    repo=$(sed -n 's/^[[:space:]]*homepage "\(.*\)"[[:space:]]*$/\1/p' "$file" | head -n 1)

    if [[ -z $desc || -z $repo ]]; then
      echo "update-readme: $file must declare a single-line desc and homepage" >&2
      return 1
    fi

    printf '| [%s](%s) | %s | %s | `brew install outscale/tap/%s` |\n' \
      "$name" "$repo" "${desc//|/\\|}" "$repo" "$name"
  done
}

table=$(mktemp)
updated=$(mktemp)
trap 'rm -f "$table" "$updated"' EXIT

generate_table >"$table"

awk -v begin="$begin_marker" -v end="$end_marker" -v table="$table" '
  $0 == begin {
    print
    while ((getline line < table) > 0) print line
    close(table)
    found = 1
    skipping = 1
    next
  }
  $0 == end { skipping = 0 }
  skipping { next }
  { print }
  END {
    if (!found) {
      printf "update-readme: %s markers not found in the README\n", begin > "/dev/stderr"
      exit 3
    }
  }
' "$readme" >"$updated"

if $check; then
  if ! diff -u "$readme" "$updated"; then
    echo "update-readme: README.md is out of date, run ./scripts/update-readme.sh" >&2
    exit 1
  fi
  echo "update-readme: README.md is up to date"
else
  cat "$updated" >"$readme"
  echo "update-readme: README.md updated"
fi
