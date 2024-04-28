# Set the system locale to US English and character encoding to UTF-8 for all categories
export LC_ALL="en_US.UTF-8"

# Add /usr/local/bin, the current directory's node_modules/.bin, and the user's .local/bin directory to the system PATH
export PATH="/usr/local/bin:$PATH:./node_modules/.bin:$HOME/.local/bin"
