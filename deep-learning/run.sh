
# Libera o X para ser usado pelo container.
xhost + > /dev/null

SHARED_VOLUME="$HOME/.deep-learning"

mkdir -p $SHARED_VOLUME

# Execução do docker.
nvidia-docker run -it --network=host \
	-v $HOME:$HOME \
	-v $SHARED_VOLUME:/home/$USER \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=$DISPLAY \
	-e LOCAL_USER_ID=`id -u $USER` \
	-e LOCAL_USER_NAME=$USER \
	tecgraf/python-ds \
	bash

