#!/usr/local/bin/bash

ISSUER="${useless}/one.sh"

ACTUAL_VALUE="$(${ISSUER})"
. $asserts/eq.sh $? 0
. $asserts/eq.sh "${ACTUAL_VALUE}" 1
