#!/usr/local/bin/bash

ISSUER="${useless}/two.sh"

. ${ISSUER} > /tmp/output
ACTUAL_VALUE="$(< /tmp/output)"
. $asserts/eq.sh $? 0
. $asserts/eq.sh "${ACTUAL_VALUE}" 2
