#!/bin/bash

# get latest version of direnv
# you can use apt or pacman
# but pacman version is currently outdated
curl -o /opt/direnv $(curl -s https://api.github.com/repos/direnv/direnv/releases/latest | jq --raw-output '.assets | map(.browser_download_url) | map(select(. | test(".*direnv.linux-amd64.*"))) | .[0]')
chmod +x /opt/direnv
ln -s /opt/direnv /usr/bin/
