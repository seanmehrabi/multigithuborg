#!/bin/bash

# Hardcoded username and token values
username="seanmehrabi-rogers"
token="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"

# Check if a repository URL is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <repository_url> [destination_folder]"
    exit 1
fi

repo_url="$1"

# Determine destination folder
if [ "$#" -eq 2 ]; then
    destination_folder="$2"
else
    # Default to repository name if no destination folder is specified
    destination_folder=$(basename "$repo_url" .git)
fi

# Check if the given URL matches the expected format
if [[ ! "$repo_url" =~ ^https://github.com/[^/]+/[^/]+.git$ ]]; then
    echo "Invalid URL format!"
    exit 1
fi

# Construct the updated URL
updated_url="https://${username}:${token}@${repo_url#https://}"

# Clone the repository to the specified or default folder
git clone "$updated_url" "$destination_folder"

# Check the status of git clone operation
if [ $? -eq 0 ]; then
    echo "Repository cloned successfully to $destination_folder!"
else
    echo "Failed to clone the repository!"
fi
