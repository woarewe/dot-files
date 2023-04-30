autoload -U add-zsh-hook

eval "$(rbenv init - zsh)"

export DISABLE_SPRING=true
export DISABLE_BOOTSNAP=true

switch-ruby-version() {
  local version_file=".ruby-version"
  if [[ -f $version_file ]]; then
    local ruby_version=$(cat $version_file)
    rbenv shell $ruby_version
  else
    rbenv shell  --unset
  fi
}

add-zsh-hook chpwd switch-ruby-version
