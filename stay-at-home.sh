function cd() {
  builtin cd "$@";
  if [[ ${PWD} != ${HOME}* ]]
  then
    builtin cd $HOME;
    echo "Permission denied: stay at home" >&2;
    return 126;
  fi
}
