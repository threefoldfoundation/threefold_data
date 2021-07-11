#!/bin/bash

set -ex
sudo chown gitpod:gitpod -R /tmp

export base=/nodejs
export lts=14.17.3

echo $base
sudo mkdir -p $base
sudo chown gitpod:gitpod -R $base
cd $base

rm -f $base/nvm.sh
curl -s -o nvm.sh https://raw.githubusercontent.com/nvm-sh/nvm/master/nvm.sh
bash nvm.sh

export NVM_DIR=$base
source $base/nvm.sh

nvm install --lts
nvm use --lts

rm -f package.json
curl -s -o package.json https://raw.githubusercontent.com/threefoldfoundation/data_threefold/development/gitpod_scripts/package.json

npm install --global @gridsome/cli
npm install
