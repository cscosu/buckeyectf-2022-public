#!/usr/bin/env sh

rm -rf dist
mkdir dist

cd deploy
rsync -avzP . ../dist --exclude=".env" --exclude="node_modules" --exclude="env"
cd ..
sed -i 's/buckeye{.*}/buckeye{this_is_a_fake_flag}/g' dist/Dockerfile

cd dist
zip -r dist.zip .
mv dist.zip ..
cd ..
rm -rf dist
mkdir dist
name=${PWD##*/}
mv dist.zip dist/$name.zip
