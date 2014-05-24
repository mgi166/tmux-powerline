#!/usr/bin/env bash

symbol="ruby: "

run_segment() {
    if rbenv >/dev/null 2>&1; then
        version=$(ruby -v | awk -F ' ' '{print $2}')
        echo "${symbol}${version}"
        exit 0
    else
        echo "${symbol}not found"
        exit 1
    fi
}
