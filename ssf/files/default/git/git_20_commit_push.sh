#!/bin/sh
# Only use this for debugging!
# set -x

# Collect incoming arguments
STATE=${1}
BRANCH_PR=${2}
COMMIT_GREP=${3}
COMMIT_TITLE=${4}
COMMIT_BODY=${5}
COMMIT_OPTIONS=${6}
PUSH_TO_REMOTE=${7}
# Prepare initial state line variables
CHANGED=True
COMMENT='Command `'${STATE}'` run'

# Prepare git options depending on if a commit was found or not
COMMIT=$(git log -n1 | grep "${COMMIT_GREP}")
if [ "${COMMIT}" ]; then
    AMEND='--amend'
    FORCE='-f'
else
    AMEND=''
    FORCE=''
fi

# Perform actions
git commit ${AMEND} "${COMMIT_OPTIONS}" -m "${COMMIT_TITLE}" -m "${COMMIT_BODY}"
git push ${FORCE} -u ${PUSH_TO_REMOTE} ${BRANCH_PR}

# Write the state line
echo "changed=${CHANGED} comment='${COMMENT}'"
