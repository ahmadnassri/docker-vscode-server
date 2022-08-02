#!/bin/bash
set -o pipefail

# Run a dbus session, which unlocks the gnome-keyring and runs the VS Code Server inside of it
dbus-run-session -- sh -c "(echo $VSCODE_KEYRING_PASS | gnome-keyring-daemon --unlock) && ./code-server.sh"
