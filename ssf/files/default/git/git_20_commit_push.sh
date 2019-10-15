#!/bin/sh
# Only use this for debugging!
# set -x

# Collect incoming arguments
STATE=${1}
BRANCH_UPSTREAM=${2}
BRANCH_PR=${3}
COMMIT_GREP=${4}
COMMIT_TITLE=${5}
COMMIT_BODY=${6}
COMMIT_OPTIONS=${7}
PUSH_ACTIVE=${8}
PUSH_VIA_PR=${9}
REMOTE_FORK_NAME=${10}
REMOTE_FORK_BRANCH=${11}
REMOTE_UPSTREAM_NAME=${12}
REMOTE_UPSTREAM_BRANCH=${13}
# Prepare initial state line variables
CHANGED='True'
COMMENT='Command `'${STATE}'` run'

# Prepare git options depending on if a commit was found or not
COMMIT=$(git log -n1 | grep "${COMMIT_GREP}")
if [ ! -z "${COMMIT}" ]; then
    AMEND='--amend'
    FORCE='-f'
else
    AMEND=''
    FORCE=''
fi

# Perform actions
git commit ${AMEND} "${COMMIT_OPTIONS}" -m "${COMMIT_TITLE}" -m "${COMMIT_BODY}"
if [ "${PUSH_ACTIVE}" = "True" ]; then
    if [ "${PUSH_VIA_PR}" = "True" ]; then
        git push ${FORCE} -u ${REMOTE_FORK_NAME} ${BRANCH_PR}
    else
        git checkout ${BRANCH_UPSTREAM}
        git merge ${BRANCH_PR}
        git push ${REMOTE_UPSTREAM_NAME} HEAD:${REMOTE_UPSTREAM_BRANCH}
        git branch -d ${BRANCH_PR}
    fi
fi

# Write the state line
echo "changed=${CHANGED} comment='${COMMENT}'"
