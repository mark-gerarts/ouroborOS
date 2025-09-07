#!/usr/bin/env bash
set -euo pipefail

# Returns something like "0.7.3".
version=$(curl -Is "https://github.com/qwerty-fr/qwerty-fr/releases/latest" | grep location | grep -Po "(?<=tag/v).*(?=\W)")
download_link="https://github.com/qwerty-fr/qwerty-fr/releases/download/v${version}/qwerty-fr_${version}_linux.zip"

curl -L -s -o qwerty_fr.zip "$download_link"

# Extract it to /usr/share/*
unzip qwerty_fr.zip -d /
rm qwerty_fr.zip
