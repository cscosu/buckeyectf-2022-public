#!/usr/bin/env sh

rm -rf dist
mkdir dist

cd deploy
rsync -avzP . ../dist
cd ..
sed -i '' 's/buckeye{.*}/buckeye{this_is_a_fake_flag}/g' dist/flag.txt

# cp -r libs/ dist/libs/

mv dist dist-ipc
zip -r dist.zip dist-ipc/
rm -rf dist-ipc
mkdir dist
mv dist.zip dist/ipc.zip
