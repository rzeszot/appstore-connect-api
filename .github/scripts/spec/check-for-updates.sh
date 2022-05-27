#!/bin/sh

mkdir tmp
cd tmp

echo "::group::Download"
wget https://developer.apple.com/sample-code/app-store-connect/app-store-connect-openapi-specification.zip
echo "::endgroup::"

echo "::group::Unzip"
unzip app-store-connect-openapi-specification.zip
echo "::endgroup::"

spec_file=`ls *.json`

mv "$spec_file" ..

cd ..
rm -rf tmp

spec_version=`cat "$spec_file" | jq -r .info.version`

echo ::set-output name=spec_file::$spec_file
echo ::set-output name=spec_version::$spec_version
