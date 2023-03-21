#!/bin/bash

podspec=$(cat ../octobase.podspec)
current_version=$(echo "$podspec" | grep -oE 'spec\.version\s*=\s*"[0-9]+\.[0-9]+\.[0-9]+"' | awk -F'"' '{print $2}')

IFS='.' read -ra version_parts <<< "$current_version"
major=${version_parts[0]}
minor=${version_parts[1]}
patch=$((version_parts[2] + 1))

new_version="$major.$minor.$patch"
new_podspec=$(echo "$podspec" | sed "s/$current_version/$new_version/")
echo "$new_podspec" > ../octobase.podspec
