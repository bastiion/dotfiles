#!/bin/zsh

REMOTE=${1}

USER0=${2}
PW0=${3}
DB0=${4}

USER1=${5:-$USER0}
PW1=${6:-$PW0}
DB1=${7:-$DB0}

ALL=""
if [ -z ${DB0} ];then
    ALL="--all-databases"
fi

CMD="mysqldump ${ALL}  -u ${USER0} -p${PW0} ${DB0} | ssh ${REMOTE} \"mysql -u ${USER1} -p${PW1} ${DB1}\""
echo ${CMD}
read -q "REPLY?Execute this command?(y/n)"
if [ ${REPLY} = "y" ]; then
    eval ${CMD}
fi
