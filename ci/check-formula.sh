#!/usr/bin/env bash
# Installs, tests and audits Formula/macsweep.rb from a throwaway local tap.
set -euo pipefail
export HOMEBREW_NO_AUTO_UPDATE=1 HOMEBREW_NO_INSTALL_CLEANUP=1 HOMEBREW_NO_ANALYTICS=1
brew tap-new --no-git local/check >/dev/null
cp Formula/macsweep.rb "$(brew --repository)/Library/Taps/local/homebrew-check/Formula/"
brew install local/check/macsweep
brew test local/check/macsweep
brew audit --strict --online local/check/macsweep
macsweep version
