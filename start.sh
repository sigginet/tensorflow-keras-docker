#!/bin/bash

tensorboard --logdir=tensorflow-logs &

jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token=

