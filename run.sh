#!/usr/bin/env bash
#
# Usage:
#   ./run.sh <function name>

set -o nounset
set -o pipefail
set -o errexit

# https://bundler.io/
install-bundler() {
  sudo gem install bundler
}

# bundle init?
# bundle exec jekyll new --force .

"$@"
