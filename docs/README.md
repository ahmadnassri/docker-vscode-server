The Visual Studio Code Server is a service you can run on a remote development machine, like your desktop PC or a virtual machine (VM). It allows you to securely connect to that remote machine from anywhere through a vscode.dev URL, without the requirement of SSH.

This is simply a containerized version of the VS Code Server.

Learn more on [the official website](https://code.visualstudio.com/docs/remote/vscode-server)

## Features

- Runs entirely locally, without needing `vscode.dev`
  - TODO: add flag to support `vscode.dev`
- Persistent secrets _(requirement for Settings Sync)_
