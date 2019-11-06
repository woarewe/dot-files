# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export LANG="en_US.UTF-8"
ssh-add ~/.ssh/id_rsa

alias rails_pry="pry -r $(pwd)/config/environment"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
