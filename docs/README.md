
The Visual Studio Code Server is a service you can run on a remote development machine, like your desktop PC or a virtual machine (VM). It allows you to securely connect to that remote machine from anywhere through a vscode.dev URL, without the requirement of SSH.

This is simply a containerized version of the VS Code Server.

Learn more on [the official documentation](https://code.visualstudio.com/docs/remote/vscode-server)

## Features

<!-- markdownlint-capture -->
<!-- markdownlint-disable MD007 MD030 -->
- Runs entirely locally, without needing `vscode.dev`
  - TODO: pending resolution of [issue #7018](https://github.com/microsoft/vscode-remote-release/issues/7018) to support `vscode.dev`
- Persistent secrets _(requirement for Settings Sync)_
<!-- markdownlint-restore -->

## Usage

```bash
docker run --rm \
  --name vscode-server \
  --hostname vscode \
  -p 8000:8000 \
  -e VSCODE_KEYRING_PASS="mysecretpassword" \
  -e VSCODE_SERVE_MODE=serve-local \
  -v /<host_folder_data>:/root/.vscode-server \
  ahmadnassri/vscode-server:latest
```

Optionally, you can specify an init script that could be used to install additional software adding the following mount:
```bash
-v /<init_script_path>:/usr/local/bin/init
```
