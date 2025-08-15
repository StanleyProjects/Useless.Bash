#!/usr/local/bin/bash

mkdir -p 'build'
mkdir -p 'build/yml'
ISSUER='build/yml/metadata.yml'
echo "repository:
 owner: 'StanleyProjects'
 name: 'Useless.Bash'
version: '0.1.6'" > "${ISSUER}"

VERSION="$(yq -erM .version "${ISSUER}")" || exit 1
REP_NAME="$(yq -erM .repository.name "${ISSUER}")" || exit 1

mkdir -p 'build/zip'
ISSUER="build/zip/${REP_NAME}-${VERSION}.zip"
zip -r "${ISSUER}" src/main/bash LICENSE README.md
