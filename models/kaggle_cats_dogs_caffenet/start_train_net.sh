#!/usr/bin/env sh
set -ex

# DIR="$( cd "$(dirname "$0")" ; pwd -P )"

CAFFE_ROOT_DIR="/Users/ganon01/Documents/Work/Hackathon/image-classification/caffe"

$CAFFE_ROOT_DIR/build/tools/caffe train \
    --solver=$CAFFE_ROOT_DIR/models/kaggle_cats_dogs_caffenet/solver.prototxt --weights $CAFFE_ROOT_DIR/models/bvlc_reference_caffenet/bvlc_reference_caffenet.caffemodel >> $CAFFE_ROOT_DIR/models/kaggle_cats_dogs_caffenet/caffe_caffenet_transfer_train.log 2>&1 \
    | tee $CAFFE_ROOT_DIR/models/kaggle_cats_dogs_caffenet/caffe_caffenet_transfer_train.log &

echo "Training started..."
