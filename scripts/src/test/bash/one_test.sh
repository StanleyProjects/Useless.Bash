#!/usr/local/bin/bash

ISSUER="${useless}/one.sh"

. ${ISSUER} > /tmp/output
ACTUAL_VALUE="$(< /tmp/output)"
. $asserts/eq.sh $? 0
. $asserts/eq.sh "${ACTUAL_VALUE}" 1
