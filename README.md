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

The `okf` formula builds from source with a vendored Dart SDK, so installing it
compiles the tool. Nothing needs to be installed beforehand: the formula
downloads a pinned SDK as a build resource and discards it once the executable
is linked.

Its `url` and `sha256` fields are regenerated automatically when okf publishes
a release tag. Do not edit `Formula/okf.rb` by hand — the next release
overwrites it. Change it in the [okf
repository](https://github.com/conceptadev/okf/blob/main/tool/release/homebrew/okf.rb)
and copy the result here.

The pinned `dart_sdk_version` and its digests are *not* automated; they are
updated by hand in that same file.

Supported platforms are macOS and Linux, on x86_64 and arm64. Other platforms
can install the tool from pub.dev instead:

```bash
dart pub global activate okf
```
