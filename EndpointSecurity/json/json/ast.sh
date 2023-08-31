#!/bin/bash
BASH_DIR=$(cd $(dirname $0); pwd)
echo $BASH_DIR

H_PATH=${BASH_DIR}/h.c
JSON_PATH=${BASH_DIR}/EndpointSecurity.json
Clang -fsyntax-only -Xclang -ast-dump=json ${H_PATH} > ${JSON_PATH}
