#!/bin/bash

mode=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
    
if [[ $mode == "Dark" ]]; then
    echo -ne "\033]50;SetProfile=Night\a"
    export ITERM_PROFILE="Night"
else
    echo -ne "\033]50;SetProfile=Day\a"
    export ITERM_PROFILE="Day"
fi

