
# Libera o X para ser usado pelo container.
xhost + > /dev/null

# Execução do docker.
nvidia-docker run -it --network=host \
	-v $HOME:$HOME \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=$DISPLAY \
	-e LOCAL_USER_ID=`id -u $USER` \
	-e LOCAL_USER_GROUP=`id -g $USER` \
	-e LOCAL_USER_NAME=$USER \
	-e LOCAL_USER_HOME=$HOME \
	jppnavarro/deep-learning \
	bash

