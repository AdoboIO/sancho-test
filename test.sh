#!/bin/sh
[ "$(./sum.sh 2 3)" = "5" ] || { echo "expected 5"; exit 1; }
