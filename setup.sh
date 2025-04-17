#!/bin/bash

# Install Rush globally if not installed
if ! command -v rush &> /dev/null; then
  npm install -g @microsoft/rush
fi

# Install PNPM globally if not installed
if ! command -v pnpm &> /dev/null; then
  npm install -g pnpm
fi

# Install dependencies
rush update

# Setup Git hooks
rush install
rush update-autoinstaller --name rush-commitlint
rush update-autoinstaller --name rush-lint-staged
rush update-autoinstaller --name rush-prettier

echo "Setup completed successfully!"
