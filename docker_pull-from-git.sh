#!/bin/bash

docker exec -it "docker_fromthepage_v2-fromthepage-1" sh -c '
echo "Adding origin..."
git remote rm origin
git remote add origin https://github.com/Simon-Dirks/fromthepage
echo "Switching to development"
git checkout development
echo "Setting upstream to development"
git fetch
git branch --set-upstream-to=origin/development development
echo "Pulling..."
git pull
'
