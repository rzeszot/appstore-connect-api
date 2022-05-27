#!/bin/sh

version="$1"
head_branch="spec-$version"
base_branch="main"
message="Update spec to $version"


echo "::debug::version=$version"
echo "::debug::head_branch=$head_branch"
echo "::debug::base_branch=$base_branch"


notice_and_exit() {
  echo "::notice::$1"
  exit 0
}

github_pr_url() {
  gh pr view "$head_branch" --json url -q .url
}


echo "::group::Create branch"
git checkout -b "$head_branch"
echo "::endgroup::"

echo "::group::Add files"
git add -A
echo "::endgroup::"

echo "::group::Commit files"
git commit -m "$message" || notice_and_exit "(no changes)"
echo "::endgroup::"

echo "::group::Commit files"
echo "::endgroup::"


echo "::group::Create pull request"
gh pr create \
  --base "$base_branch" \
  --head "$head_branch" \
  --title "$message" \
  --body "bam!" \
  || notice_and_exit "(updated) `github_pr_url`"
echo "::endgroup::"
