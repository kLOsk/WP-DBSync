#!/bin/bash

# Ensure the script is run with sudo
if [ "$EUID" -ne 0 ]; then
  echo "Please run as root (use sudo)"
  exit 1
fi

# Make the db-sync.sh file executable
chmod +x wp-dbsync

# Move the file to /usr/local/bin
mv wp-dbsync /usr/local/bin/wp-dbsync

echo "Installation complete. You can now use the 'wp-dbsync' command."
