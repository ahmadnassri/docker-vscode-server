# VS Code Server Docker Image

a Docker image for VS Code Server

[![license][license-img]][license-url]
[![release][release-img]][release-url]
[![size][size-img]][size-url]
[![docker][docker-img]][docker-url]
[![github][github-img]][github-url]

The Visual Studio Code Server is a service you can run on a remote development machine, like your desktop PC or a virtual machine (VM). It allows you to securely connect to that remote machine from anywhere through a vscode.dev URL, without the requirement of SSH.

This is simply a containerized version of the VS Code Server.

Learn more on [the official documentation][]

## Features

<!-- markdownlint-capture -->

<!-- markdownlint-disable MD007 MD030 -->

- Runs entirely locally, without needing `vscode.dev`
- Persistent secrets *(requirement for Settings Sync)*

<!-- markdownlint-restore -->

## Usage

``` bash
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

  [the official documentation]: https://code.visualstudio.com/docs/remote/vscode-server

----
> Author: [Ahmad Nassri](https://www.ahmadnassri.com/) &bull;
> Twitter: [@AhmadNassri](https://twitter.com/AhmadNassri)

[license-url]: LICENSE
[license-img]: https://badgen.net/github/license/ahmadnassri/docker-vscode-server

[release-url]: https://github.com/ahmadnassri/docker-vscode-server/releases
[release-img]: https://badgen.net/github/release/ahmadnassri/docker-vscode-server

[size-url]: https://hub.docker.com/r/ahmadnassri/vscode-server
[size-img]: https://badgen.net/docker/size/ahmadnassri/vscode-server?label=image%20size

[docker-url]: https://hub.docker.com/r/ahmadnassri/vscode-server
[docker-img]: https://badgen.net/badge/icon/docker%20hub?icon=docker&label

[github-url]: https://github.com/users/ahmadnassri/packages/container/package/vscode-server
[github-img]: https://badgen.net/badge/icon/github%20registry?icon=github&label
