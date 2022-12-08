#!/bin/bash

while getopts f:c: option
do
    case "${option}"
        in
        c)color=${OPTARG};;
        f)SOURCE_FILE=${OPTARG};;
    esac
done

EXIT_ON_FAIL=true
# DIFF_OUTPUT_ON_FAIL=true

# SOURCE_FILE=$1
BIN_FILE=$(basename $SOURCE_FILE .cpp)

# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
NC='\033[0m' # No Color
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'

case $color in
    
    NONE | None | none | nc)
    color=$NC;;
    
    RED | Red | red)
    color=$RED;;
    
    GREEN | Green | green)
    color=$GREEN;;
    
    YELLOW | Yellow | yellow)
    color=$YELLOW;;
    
    BLUE | Blue | Blue)
    color=$BLUE;;
    
    *)
    color=$BLUE;;
esac

# Usage
if [[ ! -f $SOURCE_FILE ]]; then
    echo "File '$SOURCE_FILE' not found."
    echo "Usage: bash $0 -f <source-file>"
    exit 1
fi

# Test
for TEST in $(ls tests/in); do
    
    INPUT_TEST_FILE="tests/in/$TEST"
    OUTPUT_TEST_FILE="tests/out/$TEST"
    
    printf "${color}$TEST:${NC} "
    
    if ! diff <(./$BIN_FILE <$INPUT_TEST_FILE) $OUTPUT_TEST_FILE &>/dev/null; then
        echo -e "${RED}FAILED${NC}"
        if [[ $EXIT_ON_FAIL == true ]]; then
            echo
            echo 'YOURS                                                         EXPECTED'
            diff -y <(./$BIN_FILE <$INPUT_TEST_FILE) $OUTPUT_TEST_FILE
            exit 1
        fi
    else
        echo -e "${GREEN}PASSED${NC}"
    fi
done
