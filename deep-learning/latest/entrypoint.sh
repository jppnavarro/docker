#!/bin/bash

USER_ID=${LOCAL_USER_ID:-9001}
USER_NAME=${LOCAL_USER_NAME:-user}

export HOME=/home/$USER_NAME
useradd --shell /bin/bash -u $USER_ID -o -d $HOME $USER_NAME 

echo "${USER_NAME} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER_NAME}

cd $HOME

exec /usr/local/bin/gosu $USER_NAME "$@"
