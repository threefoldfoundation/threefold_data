set -e

export base=/nodejs

export PATH=$base/bin:$PATH

source $base/nvm.sh

nvm use --lts

#go to the website
cd /workspace/www_threefold_io

if [ -f vue.config.js ]; then
npm run-script serve
else
gridsome develop
fi