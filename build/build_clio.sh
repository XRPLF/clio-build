#!/usr/bin/env bash

export SRC_DIR=$(realpath clio_src)
echo "[${SRC_DIR}] passed to Clio repo as SRC_DIR"

cmake -S clio_ci -B clio_ci/build -DSRC_DIR=$SRC_DIR
cmake --build clio_ci/build --parallel $(nproc)

cp /github/workspace/clio_ci/build/clio-prefix/src/clio-build/clio_tests .
