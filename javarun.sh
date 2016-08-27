#!/usr/bin/env bash

set -e

srcpath="$1"
exepath=${srcpath//.java/}

cat - > "$srcpath"

javac "$srcpath"
java "$exepath"

