#!/usr/local/bin/bash

tests='scripts/src/test/bash'
asserts="${tests}/asserts"
useless='scripts/src/main/bash'

. $tests/one_test.sh
. $tests/two_test.sh
. $tests/readme_test.sh
. $tests/license_test.sh

echo 'All tests were successful.'
