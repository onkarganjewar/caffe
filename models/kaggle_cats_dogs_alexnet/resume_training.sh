#!/usr/bin/env sh
set -ex

DIR="$( cd "$(dirname "$0")" ; pwd -P )"

CAFFE_ROOT_DIR=$DIR/../../../caffe

$CAFFE_ROOT_DIR/build/tools/caffe train \
    --solver=models/bvlc_googlenet/solver.prototxt \
    --snapshot=models/bvlc_googlenet/caffenet_train_10000.solverstate.h5 \
    $@
