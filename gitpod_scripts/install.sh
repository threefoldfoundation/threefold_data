set -e

export base=/nodejs

sudo chown gitpod:gitpod -R $base

export PATH=$base/bin:$PATH

source $base/nvm.sh

pushd $base

rm -f yarn.lock
rm -rf .cache		

nvm install --lts
nvm use --lts

npm install --global @gridsome/cli

popd

rm -f yarn.lock
rm -rf .cache

#copy from the docker image to speedup
echo "sync node modules to website"
rsync -ra --delete $base/node_modules/ node_modules/ 
echo "done"

#make sure all modules are there
npm install


rm -f ../content/blog
ln -s /workspace/data_threefold/content/blog ../content/blog
rm -f ../content/news
ln -s /workspace/data_threefold/content/news ../content/news
rm -f ../content/person
ln -s /workspace/data_threefold/content/person ../content/person
rm -f ../content/project
ln -s /workspace/data_threefold/content/project ../content/project


