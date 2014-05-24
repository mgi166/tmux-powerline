#!/usr/bin/env bash

# Source lib to get the function get_tmux_pwd
source "${TMUX_POWERLINE_DIR_LIB}/tmux_adapter.sh"

symbol="ruby: "

run_segment() {
    tmux_path=$(get_tmux_cwd)
    cd "$tmux_path"

    if rbenv >/dev/null 2>&1; then
        version=$(ruby -v | awk -F ' ' '{print $2}')
        echo "${symbol}${version}"
        exit 0
    else
        echo "${symbol}not found"
        exit 1
    fi
}
