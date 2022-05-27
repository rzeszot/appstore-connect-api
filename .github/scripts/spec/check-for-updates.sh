#!/bin/sh

mkdir tmp
cd tmp

wget https://developer.apple.com/sample-code/app-store-connect/app-store-connect-openapi-specification.zip
unzip app-store-connect-openapi-specification.zip

file=`ls *.json`

mv "$file" ..

cd ..
rm -rf tmp
