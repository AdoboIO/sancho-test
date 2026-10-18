#!/usr/bin/env bash
# Every script (except lint.sh/test.sh) must be listed in README.md.
status=0
for f in $(git ls-files '*.sh'); do
  case "$f" in lint.sh|test.sh) continue;; esac
  grep -qF "$f" README.md || { echo "lint: $f is not listed in README.md"; status=1; }
done
exit $status
