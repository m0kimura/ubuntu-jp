#!/bin/bash
#
  project=${PWD##*/}
##
  if [[ $1 = "build" ]] ; then
    docker rm -f ${project}
    docker build -t ${project} .
  elif [[ $1 = "push" ]]; then
    dex push ${project}
    exit
  fi
  docker run -it --rm \
    ${project} /bin/bash
##

