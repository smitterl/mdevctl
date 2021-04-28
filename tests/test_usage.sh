#!/bin/sh
source ../mdevctl
#source ./testlib

check() {
        if ! [[ "$result" =~ ^Usage.* ]]; then
		exit 1
        fi
}

echo "usage shown when no arguments"
result=$(main 2>&1)
check

echo "usage shown when help arguments"
result=$(main -h 2>&1)
check
result=$(main --help 2>&1)
check
