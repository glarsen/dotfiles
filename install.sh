#!/bin/bash

USER=$1
INSTALL_PATH=/home/$USER

if [ $# -eq 1 ];
  then
    echo "Installing to home of $USER..."
    cp .gdbinit $INSTALL_PATH
    cp .lldbinit $INSTALL_PATH
    cp .tmux.conf $INSTALL_PATH
    cp .vimrc $INSTALL_PATH
  else
    echo "Invalid argument count!\nUsage: install.sh USERNAME"
    exit
fi
