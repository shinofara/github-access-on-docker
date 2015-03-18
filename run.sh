#!/bin/sh
docker run \
  -v `pwd`:/worker \
  -v $(readlink -f $SSH_AUTH_SOCK):/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent \
  --rm shinofara/ansible:0.1
