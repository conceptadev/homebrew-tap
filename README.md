# Concepta Homebrew Tap

Homebrew formulae for Concepta developer tools.

## Usage

```bash
brew tap conceptadev/tap
brew install okf
```

Or in one step, without tapping first:

```bash
brew install conceptadev/tap/okf
```

## Formulae

| Formula | Description |
| --- | --- |
| [okf](Formula/okf.rb) | Format-first toolkit for reading, validating, writing, indexing, and graphing Open Knowledge Format bundles |

## Releases

The `okf` formula installs the prebuilt executable attached to each
[okf](https://github.com/conceptadev/okf) release, so installing it does not
build anything and does not need the Dart SDK.

Its `url` and `sha256` fields are regenerated automatically when okf publishes
a release tag: the release workflow reads the checksums back from the published
assets and commits the rendered formula here. Do not edit `Formula/okf.rb` by
hand — the next release overwrites it.

Prebuilt executables cover Apple Silicon macOS and x86_64 Linux. Other
platforms can install the tool from pub.dev instead:

```bash
dart pub global activate okf
```
