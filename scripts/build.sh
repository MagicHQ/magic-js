#!/usr/bin/env bash

export NODE_ENV=production
export WEBPACK_ENV=production
export BABEL_ENV=production

export MAGIC_URL=https://auth.magic.link

# Increase memory limit for Node
export NODE_OPTIONS=--max_old_space_size=4096

echo
echo "Building Magic SDK for production, pointing to $MAGIC_URL"
echo

export TS_NODE_PROJECT="webpack/tsconfig.json"
webpack --config webpack/webpack.config.ts
