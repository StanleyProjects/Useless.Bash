#!/usr/local/bin/bash

mkdir -p 'scripts/build'
mkdir -p 'scripts/build/yml'
ISSUER='scripts/build/yml/metadata.yml'
echo "repository:
 owner: 'StanleyProjects'
 name: 'Useless.Bash'
version: '0.1.2'" > "${ISSUER}"

VERSION="$(yq -erM .version "${ISSUER}")" || exit 1
REP_NAME="$(yq -erM .repository.name "${ISSUER}")" || exit 1

mkdir -p 'scripts/build/zip'
ISSUER="scripts/build/zip/${REP_NAME}-${VERSION}.zip"
zip -r "${ISSUER}" scripts LICENSE README.md
