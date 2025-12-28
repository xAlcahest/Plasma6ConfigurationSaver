#!/bin/bash

# Plasma6ConfigurationSaver Installation Script
# This script downloads and installs the Plasma6ConfigurationSaver plasmoid

set -e  # Exit on any error

echo "Downloading Plasma6ConfigurationSaver plasmoid..."

# Download the plasmoid archive (replace with actual URL when hosted)
# For now, using a placeholder - user must replace with actual GitHub release URL
PLASMOID_URL="https://github.com/YOUR_USERNAME/YOUR_REPO/releases/download/v1.0/plasma_config_saver.tar.gz"

curl -L "$PLASMOID_URL" -o /tmp/plasma_config_saver.tar.gz

echo "Extracting plasmoid..."

# Extract to temporary directory
tar -xzf /tmp/plasma_config_saver.tar.gz -C /tmp

echo "Installing plasmoid..."

# Install using kpackagetool6
kpackagetool6 --install /tmp/Plasma6ConfigurationSaver

echo "Cleaning up temporary files..."

# Clean up
rm /tmp/plasma_config_saver.tar.gz
rm -rf /tmp/Plasma6ConfigurationSaver

echo "Plasma6ConfigurationSaver plasmoid installed successfully!"
echo "You can now add it to your Plasma desktop from the widgets menu."