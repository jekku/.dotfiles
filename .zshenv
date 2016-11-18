alias pacman='sudo pacman --color auto'
alias powerpill='sudo powerpill'
alias pacman-key='sudo pacman-key'
alias tmux='tmux -2'
alias holyhandgrenade="git branch | grep -v 'develop' | xargs git branch -D"
alias ifconfig="ip addr"

git () {
  if [[ $1 = "reset" && $2="--hard" ]];
  then
    echo "Are you fucking sure about this??? [Y/N] "
    read ans

    if [ "$ans" = Y ] || [ "$ans" = y ];
    then
      /usr/bin/git $@
    else
      echo "Thanks for not resetting me senpai"
    fi

  else /usr/bin/git $@
  fi
}

