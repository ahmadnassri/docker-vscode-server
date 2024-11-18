
The Visual Studio Code Server is a service you can run on a remote development machine, like your desktop PC or a virtual machine (VM). It allows you to securely connect to that remote machine from anywhere through a vscode.dev URL, without the requirement of SSH.

This is simply a containerized version of the VS Code Server.

Learn more on [the official documentation](https://code.visualstudio.com/docs/remote/vscode-server)

## Features

<!-- markdownlint-capture -->
<!-- markdownlint-disable MD007 MD030 -->
- Runs entirely locally, without needing `vscode.dev`
- Persistent secrets _(requirement for Settings Sync)_
<!-- markdownlint-restore -->

## Usage

```bash
docker run --rm \
  --name vscode-server \
  --hostname vscode \
  -p 8000:8000 \
  -v ./server-data:/root/.vscode/server-data
  -v ./user-data:/root/.vscode/user-data
  -v ./cli-data:/root/.vscode/cli-data
  -v ./extensions:/root/.vscode/extensions
  ahmadnassri/vscode-server:latest
```
