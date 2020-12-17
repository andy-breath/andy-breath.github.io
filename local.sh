#!/usr/bin/env bash
#
# Usage:
#   ./local.sh <function name>

set -o nounset
set -o pipefail
set -o errexit

git-merge-to-master() {
  local do_push=${1:-T}  # pass F to disable

  local branch=$(git rev-parse --abbrev-ref HEAD)

  if test "$do_push" = T; then
    git checkout master &&
    git merge $branch &&
    git push &&
    git checkout $branch
  else
    git checkout master &&
    git merge $branch &&
    git checkout $branch
  fi
}

"$@"
