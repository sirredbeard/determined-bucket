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

## Help

Join the [Determined AI Commmunity Slack](https://join.slack.com/t/determined-community/shared_invite/zt-1f4hj60z5-JMHb~wSr2xksLZVBN61g_Q).

## License

This project is licensed under the Apache License Version 2.0.
