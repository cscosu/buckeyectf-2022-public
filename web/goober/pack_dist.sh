#!/usr/bin/env sh

rm -rf dist
mkdir dist

cp docker-compose.yml ./dist
cp .env ./dist

cd public
rsync -avzP . ../dist/public
cd ../internal
rsync -avzP . ../dist/internal
cd ..

cd dist 
sed -i 's/buckeye{.*}/buckeye{this_is_a_fake_flag}/g' .env
zip -r dist.zip .
mv dist.zip ..
cd ..
rm -rf dist
mkdir dist
name=${PWD##*/}
mv dist.zip dist/$name.zip