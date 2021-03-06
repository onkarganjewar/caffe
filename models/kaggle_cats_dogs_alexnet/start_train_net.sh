#!/usr/bin/env sh
set -ex

DIR="$( cd "$(dirname "$0")" ; pwd -P )"

CAFFE_ROOT_DIR="/Users/ganon01/Documents/Work/Hackathon/image-classification/caffe"

$CAFFE_ROOT_DIR/build/tools/caffe train \
    --solver=$CAFFE_ROOT_DIR/models/kaggle_cats_dogs_alexnet/solver.prototxt >> $CAFFE_ROOT_DIR/models/kaggle_cats_dogs_alexnet/caffe_alexnet_train.log 2>&1 \
    | tee $CAFFE_ROOT_DIR/models/kaggle_cats_dogs_alexnet/caffe_alexnet_train.log &

echo "Training started..."
