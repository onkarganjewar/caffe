#!/usr/bin/env sh
set -ex

DIR="$( cd "$(dirname "$0")" ; pwd -P )"

CAFFE_ROOT_DIR=$DIR/../../../caffe

$CAFFE_ROOT_DIR/build/tools/caffe train \
    --solver=$CAFFE_ROOT_DIR/models/bvlc_googlenet/solver.prototxt >> $DIR/bvlc_googlenet_train.log 2>&1 \
    | tee $DIR/bvlc_googlenet_train.log $@
