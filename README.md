# Concepta Homebrew Tap

Homebrew formulae for Concepta developer tools.

## Usage

```bash
brew tap conceptadev/tap
brew install okf okfp
```

## Formulae

| Formula | Description |
| --- | --- |
| [okf](Formula/okf.rb) | OKF engine — validate, format, index, graph, and serve a knowledge bundle over MCP |
| [okfp](Formula/okfp.rb) | OKF profile validator — checks a knowledge bundle against its declared profile |

## Releases

Formula `url` and `sha256` fields point at the pub.dev archive of each release.
`okfp` is bumped by [okf-profile](https://github.com/conceptadev/okf-profile)'s
release workflow; `okf` follows once conceptadev/okf#44 lands. Until the first tagged release is published, `brew install okfp` will not
succeed.
