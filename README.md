# homebrew-tap

Homebrew formulae for [macsweep](https://github.com/shannong57/macsweep).

```sh
brew install shannong57/tap/macsweep
```

## How updates arrive

When macsweep publishes a release, the `bump` workflow notices within a day (or right away if it's started from the Actions tab). It updates the formula, installs, tests and audits it on macOS, then opens a PR. The formula changes once that PR is merged.
