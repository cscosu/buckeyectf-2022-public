#!/usr/bin/env sh

rm -rf dist
mkdir dist

cd deploy
rsync -avzP . ../dist --exclude="node_modules"
cd ..

cd dist
sed -i 's/buckeye\\{.*\\}/buckeye\{this_is_a_fake_flag\}/g' flag.tex
zip -r dist.zip .
mv dist.zip ..
cd ..
rm -rf dist
mkdir dist
name=${PWD##*/}
mv dist.zip dist/$name.zip