#!/bin/bash

# Define a variable to store the container path
WORKING_PATH="/home/hero/skywalker/lab"
CONTAINER_PATH="/var/www/skywalker/lab"
CONTAINER_NAME="skywalker-pm2-lab"
TARGET_BRANCH="origin/master"

# goto folder
cd -P "$WORKING_PATH"

# before
before=$(git rev-parse $TARGET_BRANCH)

# git pull from latest repo
git pull ${TARGET_BRANCH//\// }

# after
after=$(git rev-parse $TARGET_BRANCH)

if [ "$before" != "$after" ]; then
    # copy directory to docker container path
    docker cp . "$CONTAINER_NAME":"$CONTAINER_PATH"

    # docker execute npm run build 和 pm2 start pm2.json
    docker exec -it "$CONTAINER_NAME" npm install
    docker exec -it "$CONTAINER_NAME" npm run build
    docker exec -it "$CONTAINER_NAME" pm2 restart pm2.json
fi