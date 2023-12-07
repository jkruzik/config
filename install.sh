#!/bin/bash
INSTALL_CMD='pikaur -S --noconfirm --needed'

install() {
  $INSTALL_CMD $@
  RET=$?
  if [ $RET -ne 0 ]; then
    echo "Error installing $@"
    exit $RET
  fi
}

