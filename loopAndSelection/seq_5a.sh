#!/bin/bash -x

echo "1 ft = 12 in";
calc=`echo 42 12 | awk '{ printf "%0.2f", $1 / $2 }'`
echo "Hence 42in = $calc ft"


