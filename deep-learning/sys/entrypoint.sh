#!/bin/bash

USER_ID=${LOCAL_USER_ID:-9001}
USER_NAME=${LOCAL_USER_NAME:-user}
USER_HOME=${LOCAL_USER_HOME:-/home/user}

useradd --shell /bin/bash -u $USER_ID -o -d $USER_HOME $USER_NAME
export HOME=$USER_HOME

echo "${USER_NAME} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER_NAME}

cd $USER_HOME

exec /usr/local/bin/gosu $USER_NAME "$@"

