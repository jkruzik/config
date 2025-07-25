#!/bin/sh
if [[ ! -z "$PETSC_DIR" ]]; then
  mpir=$PETSC_DIR/$PETSC_ARCH/bin/mpirun
  if [[ -e "$mpir" ]]; then
    $mpir "$@"
    exit
  fi
fi
mpirun --map-by :OVERSUBSCRIBE "$@"

