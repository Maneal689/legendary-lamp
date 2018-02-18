#!/bin/sh
if [ $# -eq 2 ]; then
    REPO=$1
    ORG=$2
    curl -u Maneal689 https://api.github.com/orgs/$ORG/repos -d "{\"name\": \"$REPO\", \"auto_init\": true, \"gitignore_template\": \"nanoc\"}"
    git clone https://github.com/$ORG/$REPO.git

elif [ $# -eq 1 ]; then
    REPO=$1
    curl -u Maneal689 https://api.github.com/user/repos -d "{\"name\": \"$REPO\", \"auto_init\": true, \"gitignore_template\": \"nanoc\"}"
    git clone https://github.com/Maneal689/$REPO.git

else
    echo """\
USAGE: create_repo.sh [repo] {org}
    
Required argument:
    - repo: str -- Name of the repository
Optional argument:
    - org: str -- Name of the organization the repo's belong to
"""
fi
