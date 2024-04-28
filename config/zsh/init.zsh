#!/usr/bin/env zsh

# Define the path to the zsh configuration directory
config_dir="$HOME/.config/zsh/"

# Load the main configuration files
current_file=$(basename $0)
main_config_file="ohmyzsh.zsh"
source "$config_dir$main_config_file"

# Find all .sh files in the config directory, excluding main config file
# The result is a list of file paths
config_files=$(find "$config_dir" -type f -name '*.zsh' ! -name "$current_file" ! -name "$main_config_file")

# Convert the list of file paths from newline-separated to space-separated
config_files=($(echo "$config_files" | tr '\n' ' '))

# Load each of the partial configuration files
for config_file in $config_files; do
	source "$config_file"
done
