#!/bin/bash

ARGS=( "$@" )
XSLT=""
XML=""
OUT=""
SAXON=/usr/bin/saxon9-xslt

for arg;do
    if [[ "${arg}" == *xml ]];then
        XML="${arg}"
    elif [[ "${arg}" == *xsl ]];then
        XSLT="${arg}"
    fi
done

OUT=$(/usr/bin/kdialog --getsavefilename $(dirname ${XML}))

if [[ -z "${OUT}" ]]; then
    OUT=${XML/xml/svg}
fi


if [ -n "${XML}" ] && [ -n "${XSLT}" ]; then
    CMD="${SAXON} -s:${XML} -xsl:${XSLT} -o:${OUT}"
    echo "would execute ${CMD} in $(pwd)"
    $CMD
fi
