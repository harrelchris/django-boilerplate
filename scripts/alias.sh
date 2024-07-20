#!/bin/bash

# Define the profile file (usually .bashrc or .bash_profile)
PROFILE="$HOME/.bashrc"

# Function to check if a line exists in the profile
line_exists_in_profile() {
    local line="$1"
    grep -Fxq "$line" "$PROFILE"
}

# Aliases to be added
aliases=(
    "alias init='./scripts/init.sh'"
    "alias lint='./scripts/lint.sh'"
    "alias run='./scripts/run.sh'"
    "alias test='./scripts/test.sh'"
)

# Add each alias if it does not already exist
for alias in "${aliases[@]}"; do
    if ! line_exists_in_profile "$alias"; then
        echo "$alias" >> "$PROFILE"
    fi
done

echo "Persistent aliases set. Please restart your terminal or run 'source $PROFILE' to apply the changes."
