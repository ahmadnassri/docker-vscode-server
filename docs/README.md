This is simply a containerized version of the VS Code Server.

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
  -v ./server-data:/root/.vscode/server-data \
  -v ./user-data:/root/.vscode/user-data \
  -v ./cli-data:/root/.vscode/cli-data \
  -v ./extensions:/root/.vscode/extensions \
  ahmadnassri/vscode-server:latest
```
