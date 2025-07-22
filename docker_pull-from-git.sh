#!/bin/bash

docker exec -it "docker_fromthepage_v2-fromthepage-1" sh -c '
echo "Adding origin..."
git remote rm origin
git remote add origin https://github.com/Simon-Dirks/fromthepage
echo "Switching to page-level-metadata-branch"
git checkout feature/page-level-metadata
echo "Setting upstream to page-level-metadata feature"
git fetch
git branch --set-upstream-to=origin/feature/page-level-metadata feature/page-level-metadata
echo "Pulling..."
git pull
'
