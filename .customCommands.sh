#!/bin/bash
 function fpro(){
     local LOCAL_PATH="$HOME/Desktop/Home"
     cd "$LOCAL_PATH"
     local selected=$(find . -maxdepth 2 -type d | fzf --tmux 80%,80% )
     cd $OLDPWD
     if [ "$selected" != "" ] && [ "$selected" != "." ]; then
         # cd $selected
         # echo "${LOCAL_PATH}${selected:1}"
         $(tmux new-window -c "${LOCAL_PATH}${selected:1}")
     fi
 }


function nf(){
    local selected=$(fd . --type f --strip-cwd-prefix | fzf --tmux 80%,80% )
    # local selected=$(fzf --tmux 80%,80% )
    if [ "$selected" != "" ]; then
        nvim $selected
    fi
}

function fdir(){
	cd $(fd -t d | fzf)
}

function tsesh(){
    tmux new -s $1
}

function ntype(){
    echo "#include "$1.h"" > $1.cpp
    echo "#pragma once" > $1.h
}
