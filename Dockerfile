# kics-scan disable=67fd0c4a-68cf-46d7-8c41-bc9fba7e40ae,965a08d7-ef86-4f14-8792-4a3b2098937e

FROM ubuntu:23.10

# hadolint ignore=DL3008
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && apt-get install -y --no-install-recommends \
  # support env timezones
  tzdata \
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

# hadolint ignore=DL3002
USER root

HEALTHCHECK NONE

# expose port
EXPOSE 8000
