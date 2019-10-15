#!/bin/sh
# Only use this for debugging!
# set -x

# Collect incoming arguments
STATE=${1}
BRANCH_UPSTREAM=${2}
BRANCH_PR=${3}
COMMIT_GREP=${4}
# Prepare initial state line variables
CHANGED='True'
COMMENT='Command `'${STATE}'` run'

# Check if PR branch already exists
BRANCH=$(git branch -l "${BRANCH_PR}")
COMMIT=
if [ ! -z "${BRANCH}" ]; then
    git checkout ${BRANCH_PR}
    # This may end up as blank as well, so that's why a separate `if` is required below
    COMMIT=$(git log -n1 | grep "${COMMIT_GREP}")
fi

# Perform actions depending on if a commit was found or not
if [ ! -z "${COMMIT}" ]; then
    CHANGED='False'
else
    git checkout ${BRANCH_UPSTREAM}
    git pull
    git status
    # If the branch existed but not the commit, assume the branch is stale (i.e. previous PR merged)
    # Remove it, ready to be recreated at the latest upstream commit
    if [ ! -z "${BRANCH}" ]; then
        git branch -d ${BRANCH_PR}
    fi
    # TODO: Improve this part, should be able to remove with the duplication with the right solution
    # Don't want to resort to using `git branch -D` above, since that could be premature in certain situations
    # Branch may _still_ exist since it might not be merged upstream
    BRANCH=$(git branch -l "${BRANCH_PR}")
    NEW_BRANCH=''
    if [ -z "${BRANCH}" ]; then
        NEW_BRANCH='-b'
    fi
    git checkout ${NEW_BRANCH} ${BRANCH_PR}
    git merge ${BRANCH_UPSTREAM}
fi

# Write the state line
echo "changed=${CHANGED} comment='${COMMENT}'"
