#!/bin/sh

spec_file="spec.json"
echo "::set-output name=spec_file::$spec_file"

mkdir tmp
cd tmp


echo "::group::Download"
wget https://developer.apple.com/sample-code/app-store-connect/app-store-connect-openapi-specification.zip
echo "::endgroup::"

echo "::group::Unzip"
unzip "$spec_original_file"
spec_original_file=`ls *.json`
spec_version=`cat "$spec_original_file" | jq -r .info.version`
echo "::set-output name=spec_original_file::$spec_original_file"
echo "::set-output name=spec_version::$spec_version"
echo "::endgroup::"

mv "$spec_original_file" "../$spec_file"

cd ..
rm -rf tmp
