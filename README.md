# Scoop Bucket for the Determined CLI client

This is a Scoop-compatible bucket for installing an up-to-date [Determined AI](https://github.com/determined-ai/determined) CLI client on Windows.

![output](https://user-images.githubusercontent.com/33820650/186774124-61565599-56b6-4dfd-98c7-504c89cba4fc.gif)

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

This manifest first installs the official Python package as a dependency, then installs the Determined CLI via pip. However, Scoop expects to download *something*, not just run a script. So `dethelper.nim` is compiled to `determined.exe` as a binary for Scoop to download. It is published as a release here in this repository. It is a simple shim and any command line arguments passed to `determined` will be passed through to `det`.

## Help

Join the [Determined AI Commmunity Slack](https://join.slack.com/t/determined-community/shared_invite/zt-1f4hj60z5-JMHb~wSr2xksLZVBN61g_Q).

## License

This project is licensed under the Apache License Version 2.0.
