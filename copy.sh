#!/usr/bin/env bash

function die() {
    echo "$1"
    exit "$2"
}

type -P xsel >/dev/null || die 'Cannot find the xsel command' 1
type -P rake >/dev/null || die 'Cannot find the rake command' 1

rake -s || die 'Failed to execute rake' 2
cat out.css | xsel -b
echo 'copied file content to clipboard'
