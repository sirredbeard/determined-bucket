# Scoop Bucket for the Determined CLI client

This is a Scoop-compatible bucket for installing the updated the [Determined AI](https://github.com/determined-ai/determined) CLI client on Windows.

## Installation

Install [Scoop](https://scoop.sh/) in PowerShell, if you have not already done so:

```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser # Optional: Needed to run a remote script the first time
irm get.scoop.sh | iex
```

Add this Scoop bucket:

```
scoop bucket add determined-bucket https://github.com/sirredbeard/determined-bucket
```

Install the Determined CLI:

```
scoop update
scoop install determined
```

To update the Determined CLI:

```
scoop update determined
```

To use the Determined CLI:

```
det --help
```

## Note

The Determined CLI is [not eligible for inclusion](https://github.com/ScoopInstaller/Main/pull/3858) in Scoop Main or Extras buckets because it relies on pip for updates.

*However*, this Determined CLI manifest will automatically detect new [Determined releases](https://github.com/determined-ai/determined/releases) tagged on the official Determined GitHub and then trigger a pip upgrade.

## determined.exe shim

The Determined CLI is installed by first installing Python as a dependency in Scoop, then via pip. However, Scoop expects to download something, not just run a script. `dethelper.nim`, compiled to `determined.exe`, is a shim binary for Scoop to download, and is published as a release here in this repository. This gives Scoop something to download. Any command line arguments passed to `determined` will be passed through to `det`.

## License

This project is licensed under the Apache License Version 2.0.