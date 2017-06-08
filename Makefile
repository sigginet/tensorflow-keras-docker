build:
	docker build . --tag peterrosell/keras-jupyter

run:
	ls $${HOME}/notebooks || mkdir $${HOME}/notebooks
	docker run \
		-it \
		--rm \
		--name keras \
		-e KERAS_BACKEND=tensorflow \
		-p 8888:8888 \
		-p 6006:6006 \
		-v $${HOME}/notebooks:/notebooks \
		peterrosell/keras-jupyter
