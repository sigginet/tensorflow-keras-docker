# Docker image for running Keras with a Tensorflow backend

This [Dockerfile](/Dockerfile) builds an image containing both Tensorflow and Theano, but
enables TF as a backend for Keras.

You can add any files you like to this project and rebuild the image to
experiment with them.

# Usage

On OSX, you will need to install [Docker Machine](https://docs.docker.com/machine/)
or boot2docker before running this image.

### Building the image:

```bash
docker build . --tag peterrosell/keras-jupyter
```

### Running:

1. Make a directory named ```notebooks``` in your home directory.

2. Run the following command from command line

```bash
docker run \
	-it \
	--rm \
	--name keras \
	-e KERAS_BACKEND=tensorflow \
	-p 8888:8888 \
	-p 6006:6006 \
	-v ${HOME}/notebooks:/notebooks \
	peterrosell/keras-jupyter
```

3. Browse to http://localhost:8888 to access the GUI for jupyter Notebooks. 
Browse to http://localhost:6006 to access Tensorboard. Tensorboard is used for displaying log results from a learing session.

4. To shutdown just press Ctrl-C at command line.


