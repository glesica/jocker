#!/usr/bin/env bash

set -e

srcpath="$1"
exepath=${srcpath//.java/}

echo "Input:"
echo ""
echo "$srcpath"
echo ""

cat - > "$srcpath"

echo "Program:"
echo ""
cat "$srcpath"
echo ""

echo "Compile:"
echo ""
javac "$srcpath"
echo ""

echo "Output:"
echo ""
java "$exepath"

