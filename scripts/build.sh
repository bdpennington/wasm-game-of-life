#!/bin/bash

set -xe

export NVM_DIR=$HOME/.nvm;
source "$NVM_DIR"/nvm.sh;

wasm-pack build
cd www || exit
nvm use
npm install
npm run build
