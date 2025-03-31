#!/bin/bash

FNM_DIR="/Users/h8h/Library/Application Support/fnm"

# Create or update the symlink to the current fnm Node version
sudo ln -sf "$FNM_DIR/aliases/default/bin/node" /usr/local/bin/node
sudo ln -sf "$FNM_DIR/aliases/default/bin/npm" /usr/local/bin/npm
sudo ln -sf "$FNM_DIR/aliases/default/bin/npx" /usr/local/bin/npx
sudo ln -sf "$FNM_DIR/aliases/default/bin/corepack" /usr/local/bin/corepack

echo "Node.js symlinks updated"
echo "node: $(node --version)"
echo "npm: $(npm --version)"
echo "npx: $(npx --version)"
echo "corepack: $(corepack --version)"