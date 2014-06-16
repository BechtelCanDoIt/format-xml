#!/bin/bash

FORMAT_XML_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
INCLUDES=$FORMAT_XML_HOME/includes

if [[ ! (-f $1) ]]; then
    echo "Argument must be a file"
fi

xsltproc $INCLUDES/formatXml.xslt $1
