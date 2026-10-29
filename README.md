# authentik Homebrew Tap

Homebrew casks for [authentik](https://goauthentik.io).

## Install

```sh
brew install --cask goauthentik/tap/authentik-agent
```

Using the fully-qualified name trusts the cask automatically. To use short names (`brew install --cask authentik-agent`), trust the tap first with `brew trust goauthentik/tap`.

## Casks

| Cask              | Description                                                        |
| ----------------- | ------------------------------------------------------------------ |
| `authentik-agent` | [authentik Agent](https://github.com/goauthentik/platform) for macOS |

## Uninstall

```sh
brew uninstall --cask authentik-agent
# also remove configuration and logs
brew uninstall --zap --cask authentik-agent
```

Casks are updated automatically on each release of [goauthentik/platform](https://github.com/goauthentik/platform).
