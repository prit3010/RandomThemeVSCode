#!/bin/bash

# Specify the path to the JSON file
json_file="/Users/prittamravi/Library/Application Support/Code - Insiders/User/settings.json"

# List of color themes
color_themes=("GitHub Light Colorblind (Beta)" "Solarized Light" "Monokai" "GitHub Dark Colorblind (Beta)" "GitHub Light" "One Dark Pro" )

# Generate a random seed based on the current time
RANDOM_SEED=$(date +%s)

# Set the random seed
RANDOM=$RANDOM_SEED

# Randomly select a color theme
selected_theme=${color_themes[RANDOM % ${#color_themes[@]}]}

# Update the value using jq
jq ".workbench.colorTheme = \"$selected_theme\"" "$json_file" > tmp.json && mv tmp.json "$json_file"