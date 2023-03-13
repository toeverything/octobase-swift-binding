#!/bin/bash
# This script extracts the version from octobase.podspec as git tag, and push to
# https://github.com/toeverything/octobase-swift-binding.git
# TODO automatically bump version in octobase.podspec

podspec_path="octobase.podspec" &&
version=$(awk -F'"' '/spec.version/ {print $2; exit;}' "${podspec_path}") &&
version_with_prefix="swift-v${version}" &&
git tag "${version_with_prefix}" &&
git push https://github.com/toeverything/octobase-swift-binding.git "${version_with_prefix}"