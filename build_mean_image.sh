#!/usr/bin/env sh
set -ex

# Compute the mean image from the kaggle-cats-dogs training lmdb
EXAMPLE=examples/cats_dogs_classification
DATA=data/kaggle-cats-dogs
TOOLS=build/tools

echo "Creating the mean image..."
$TOOLS/compute_image_mean $EXAMPLE/kaggle_cats_dogs_dataset_train_lmdb \
  $DATA/kaggle_cats_dogs_mean.binaryproto

echo "Done."
