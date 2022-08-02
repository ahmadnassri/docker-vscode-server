# VS Code Server Docker Image

a Docker image for VS Code Server

[![license][license-img]][license-url]
[![release][release-img]][release-url]
[![super linter][super-linter-img]][super-linter-url]
[![semantic][semantic-img]][semantic-url]

[![size][size-img]][size-url]
[![docker][docker-img]][docker-url]
[![github][github-img]][github-url]

The Visual Studio Code Server is a service you can run on a remote development machine, like your desktop PC or a virtual machine (VM). It allows you to securely connect to that remote machine from anywhere through a vscode.dev URL, without the requirement of SSH.

This is simply a containerized version of the VS Code Server.

Learn more on [the official website][]

## Features:

-   Runs entirely locally, without needing `vscode.dev`
    -   TODO: add flag to support `vscode.dev`
-   Persistent secrets *(requirement for Settings Sync)*

  [the official website]: https://code.visualstudio.com/docs/remote/vscode-server

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

[license-url]: LICENSE
[license-img]: https://badgen.net/github/license/ahmadnassri/docker-vscode-server

[release-url]: https://github.com/ahmadnassri/docker-vscode-server/releases
[release-img]: https://badgen.net/github/release/ahmadnassri/docker-vscode-server

[super-linter-url]: https://github.com/ahmadnassri/docker-vscode-server/actions?query=workflow%3Asuper-linter
[super-linter-img]: https://github.com/ahmadnassri/docker-vscode-server/workflows/super-linter/badge.svg

[semantic-url]: https://github.com/ahmadnassri/docker-vscode-server/actions?query=workflow%3Arelease
[semantic-img]: https://badgen.net/badge/📦/semantically%20released/blue

[size-url]: https://hub.docker.com/r/ahmadnassri/docker-vscode-server
[size-img]: https://badgen.net/docker/size/ahmadnassri/docker-vscode-server

[docker-url]: https://hub.docker.com/r/ahmadnassri/docker-vscode-server
[docker-img]: https://badgen.net/badge/icon/docker%20hub?icon=docker&label

[github-url]: https://github.com/users/ahmadnassri/packages/container/package/docker-vscode-server
[github-img]: https://badgen.net/badge/icon/github%20registry?icon=github&label
