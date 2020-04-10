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
PUSH_ACTIVE=$(echo "${8}" | tr "[:upper:]" "[:lower:]")
PUSH_VIA_PR=$(echo "${9}" | tr "[:upper:]" "[:lower:]")
REMOTE_FORK_NAME=${10}
# Currently unused but leaving here as a placeholder
# REMOTE_FORK_BRANCH=${11}
REMOTE_UPSTREAM_NAME=${12}
REMOTE_UPSTREAM_BRANCH=${13}
COMMIT_AUTHOR=${14}
# Prepare initial state line variables
CHANGED='True'
COMMENT='Command `'${STATE}'` run'

# Prepare git options depending on if a commit was found or not
COMMIT=$(git log -n1 | grep "${COMMIT_GREP}")
if [ -n "${COMMIT}" ]; then
    AMEND='--amend'
    FORCE='-f'
else
    AMEND=''
    FORCE=''
fi

# Perform actions
# Disabling `SC2086` where double-quoting an empty variable introduces errors
if [ -z "${COMMIT_AUTHOR}" ]; then
    # shellcheck disable=SC2086
    git commit ${AMEND} "${COMMIT_OPTIONS}" -m "${COMMIT_TITLE}" -m "${COMMIT_BODY}"
else
    # shellcheck disable=SC2086
    git commit ${AMEND} "${COMMIT_OPTIONS}" -m "${COMMIT_TITLE}" -m "${COMMIT_BODY}" --author="'${COMMIT_AUTHOR}'"
fi

if ${PUSH_ACTIVE}; then
    if ${PUSH_VIA_PR}; then
        # shellcheck disable=SC2086
        git push ${FORCE} -u "${REMOTE_FORK_NAME}" "${BRANCH_PR}"
    else
        git checkout "${BRANCH_UPSTREAM}"
        git merge "${BRANCH_PR}"
        git push "${REMOTE_UPSTREAM_NAME}" "HEAD:${REMOTE_UPSTREAM_BRANCH}"
        git branch -d "${BRANCH_PR}"
    fi
fi

# Write the state line
echo "changed=${CHANGED} comment='${COMMENT}'"
