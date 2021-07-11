#!/bin/bash
mkdir -p /workspace
pushd /workspace
if ! [ -d "/workspace/data_threefold" ]
then
    git clone https://github.com/threefoldfoundation/data_threefold
fi

popd
sudo apt update
sudo apt install rsync -y
rsync -rav /workspace/data_threefold/gitpod_template/* .

