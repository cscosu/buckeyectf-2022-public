#!/usr/bin/env sh

rm -rf dist
mkdir dist

cp docker-compose.yml bot_vars.env server_vars.env ./dist

cd proxy
rsync -avzP . ../dist/proxy
cd ../src
rsync -avzP . ../dist/src --exclude="node_modules" 
cd ..

cd dist

sed -i 's/buckeye{.*}/buckeye{this_is_a_fake_flag}/g' src/flag.txt

zip -r dist.zip .
mv dist.zip ..
cd ..
rm -rf dist
mkdir dist
name=${PWD##*/}
mv dist.zip dist/$name.zip