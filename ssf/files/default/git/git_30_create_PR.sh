#!/bin/sh
# Only use this for debugging!
# set -x

# Since `GH_TOKEN` is required for creating the PR, this script doesn't do much by default
# The suggested policy is to make a copy elsewhere, override the `salt://` location in the pillar/config and
# then enter the `GH_TOKEN` below in that copy
GH_TOKEN=
# Collect incoming arguments
STATE=${1}
REPO_OWNER=${2}
REPO_NAME=${3}
REPO_BRANCH=${4}
GH_USER=${5}
BRANCH_PR=${6}
COMMIT_TITLE=${7}
COMMIT_BODY=${8}
FILE_API_RESPONSE=${9}
# Prepare initial state line variables
CHANGED=True
COMMENT='Command `'${STATE}'` run'

# Only create the PR if it doesn't already exist
# If it already exists, the `git push` done earlier will have updated the PR already
PR_EXISTS=$(curl -i https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/pulls | grep "${GH_USER}:${BRANCH_PR}")
if [ "${PR_EXISTS}" ]; then
    CHANGED=False
else
    curl -H "Authorization: bearer ${GH_TOKEN}" -d '
        {
            "title": "'"${COMMIT_TITLE}"'",
            "body":  "'"${COMMIT_BODY}"'",
            "head":  "'${GH_USER}':'${BRANCH_PR}'",
            "base":  "'${REPO_BRANCH}'"
        }
    ' https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/pulls >> ${FILE_API_RESPONSE}
fi

# Write the state line
echo "changed=${CHANGED} comment='${COMMENT}'"
