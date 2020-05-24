#!/bin/bash

# Es para remover un archivo en toda la historia de git.
# Archivo a borrar
FILES=./utils

#proceso

git filter-branch --force --index-filter 'git rm -r --cached --ignore-unmatch ${FILES}' --prune-empty --tag-name-filter cat -- --all
git for-each-ref --format='delete %(refname)' refs/original
git for-each-ref --format='delete %(refname)' refs/heads
git for-each-ref --format='delete %(refname)' refs/original | git update-ref --stdin
git reflog expire --expire=now --all
git gc --prune=now
git push origin --force --all
git push origin --force --tags
