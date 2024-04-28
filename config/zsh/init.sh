# Define the path to the zsh configuration directory
config_dir="$(pwd)/.config/zsh"

# Load the main configuration files
main_config_file="ohmyzsh.sh"
source "$config_dir/${main_config_file}"

# Find all .sh files in the config directory, excluding main config file 
# The result is a list of file paths
config_files=$(fd --glob '*.sh' --exclude "$(basename $0)" --exclude "$main_config_file" "$config_dir")

# Convert the list of file paths from newline-separated to space-separated
config_files=($(echo "$config_files" | tr '\n' ' '))

# Load each of the partial configuration files
for config_file in "${config_files[@]}"; do
	source "$config_file"
done
