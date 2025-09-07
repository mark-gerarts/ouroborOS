#!/usr/bin/env bash
set -euo pipefail

version=$(curl -s https://duckdb.org/data/latest_stable_version.txt)
download_url="https://github.com/duckdb/duckdb/releases/download/v${version}/duckdb_cli-linux-amd64.zip"

curl -L -s -o duckdb_cli.zip $download_url
unzip duckdb_cli.zip
rm duckdb_cli.zip
mv duckdb /usr/local/bin
