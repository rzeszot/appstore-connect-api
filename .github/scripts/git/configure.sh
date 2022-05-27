#!/bin/sh

echo "::group::Configure git"
git config --global user.name 'GitHub Actions'
git config --global user.email 'github-actions@users.noreply.github.com'
echo "::endgroup::"
