#!/bin/bash

if [[ ( -z ${1} ) || ( -z ${2} ) ]];then
    echo "Provide at least a name and a git-repo"
    exit 1
fi
NAME=${1}
GITURL=${2}

if [[ -e "${NAME}" ]];then
   echo "Component exists!"
   exit 1
fi

function git_add_all {
    git add --ignore-errors *
    git add --ignore-errors .git*
    return 0
}

mkdir "${NAME}"
cd "${NAME}"
polymer init \
&& tar xf ~/.bash_scripts/share/missing-element-files.tar \
&& git init \
&& git remote add origin "${GITURL}" \
&& git_add_all \
&& echo "Everything looks fine! now make your first commit"



