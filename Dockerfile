FROM ubuntu:23.04

# hadolint ignore=DL3008
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get install -y --no-install-recommends \
    # vscode requirements
    gnome-keyring wget curl python3-minimal ca-certificates \
    # development tools
    git build-essential \
    # clean up
    && apt-get autoremove -y && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# install vscode-server
# hadolint ignore=DL4006
RUN wget -q -O- https://aka.ms/install-vscode-server/setup.sh | sh

# copy scripts
COPY src/* /usr/local/bin/

# entrypoint
ENTRYPOINT [ "start-vscode" ]

# expose port
EXPOSE 8000
