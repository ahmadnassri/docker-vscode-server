# https://github.com/microsoft/vscode-dev-containers/tree/main/containers/ubuntu
FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-22.04

# hadolint ignore=DL3008
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    # install dependencies
    && apt-get install -y --no-install-recommends gnome-keyring \
    # clean up
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# install vscode-server
# hadolint ignore=DL4006
RUN wget -q -O- https://aka.ms/install-vscode-server/setup.sh | sh

# create working directory
WORKDIR /app

# copy scripts
COPY src/ /app/

# entrypoint
ENTRYPOINT [ "/app/start.sh" ]

# expose port
EXPOSE 8000
