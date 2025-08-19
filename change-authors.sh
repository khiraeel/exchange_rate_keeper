#!/bin/bash

OLD_EMAIL="mar4ehk0@gmail.com"
NEW_NAME="khiraeel"
NEW_EMAIL="ismailgaibov4@gmail.com"

git filter-branch --env-filter '
if [ "$GIT_COMMITTER_EMAIL" = "'"$OLD_EMAIL"'" ]; then
    export GIT_COMMITTER_NAME="'"$NEW_NAME"'"
    export GIT_COMMITTER_EMAIL="'"$NEW_EMAIL"'"
fi
if [ "$GIT_AUTHOR_EMAIL" = "'"$OLD_EMAIL"'" ]; then
    export GIT_AUTHOR_NAME="'"$NEW_NAME"'"
    export GIT_AUTHOR_EMAIL="'"$NEW_EMAIL"'"
fi
' --tag-name-filter cat -- --all
