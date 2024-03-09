#!/bin/zsh

# Determine the full path of the 'run' script
CMDDIR=$(realpath ./run)

# Give execute permission to the 'run' script
chmod +x ./run

# Add an alias for 'run' to ~/.zshrc
echo "alias run='$CMDDIR'" >> ~/.zshrc

# Source ~/.zshrc to make the alias immediately available
source ~/.zshrc

# Check if there were any errors during the execution of the script
if [ $? -ne 0 ]; then
    echo "An error occurred while setting up the alias. Please check your configuration."
fi

