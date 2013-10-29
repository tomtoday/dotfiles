# go to saved path if there is one
if [[ -f ~/.current_path~ ]]; then
  cd `cat ~/.current_path~`
  rm ~/.current_path~
fi

PATH=$PATH:$HOME/.manymo/bin # Add manymo to PATH for scripting
