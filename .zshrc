source-relative() {
  local current_script="${funcfiletrace[1]%%:*}"
  local current_script_dir="$(dirname "$current_script")"
  local file_to_source="$current_script_dir/$1"
  source "$file_to_source"
}

source-relative ".shell-init/init.sh"
