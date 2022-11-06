#!/usr/bin/env sh

rm -rf dist
mkdir dist

cp docker-compose.yml vars.env dist
cd deploy
rsync -avzP . ../dist/deploy --exclude="__pycache__" --exclude=".env"
cd ..

cd dist
zip -r dist.zip .
mv dist.zip ..
cd ..
rm -rf dist
mkdir dist
name=${PWD##*/}
mv dist.zip dist/$name.zip