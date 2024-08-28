 LOCAL_PATH="$HOME/Desktop/Home"
 cd "$LOCAL_PATH"
 selected=$(find . -maxdepth 2 -type d | fzf --tmux 80%,80% )
 cd $OLDPWD
 if [ "$selected" != "" ] && [ "$selected" != "." ]; then
     $(tmux new-window -c "${LOCAL_PATH}${selected:1}")
 fi

