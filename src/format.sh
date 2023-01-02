#!/bin/bash

if [ $# != 1 ]; then
    echo "USAGE: $0 <clang-format> [--fix]"
fi

if [ "$2" == "--fix" ]; then
    FIX=true
fi

CLANG_FORMAT=$1

echo "Using clang format $CLANG_FORMAT"
FILES=$(find . -name "*.cpp" -o -name "*.h")
echo Files:
echo $FILES

if [ "$FIX" = true ]; then
    echo "Formatting in place"
    $CLANG_FORMAT -i $FILES || exit $?
    echo "Done formatting"
else
    echo "Checkign formatting"
    $CLANG_FORMAT --dry-run -Werror $FILES || exit $?
    echo "Formatting is OK"
fi


