1 - Baixar arquivo helloworld.py, que utiliza a biblioteca de Deep Learning Tensorflow:
```
$ wget https://raw.githubusercontent.com/aymericdamien/TensorFlow-Examples/master/examples/1_Introduction/helloworld.py
```

2 - Criar um container **tensorflow** persistente com espaço compartilhado **/home/verao**
```
$ docker pull tensorflow/tensorflow
```

3 - De dentro do container, executar script helloworld:

```
$ python helloworld.py
```

4 - Alterar o conteúdo do arquivo helloworld.py. Na linha 19, modificar o print **'Hello, TensorFlow!'** para **‘NVIDIA rocks!'**

5 - Remover o container e a imagem.

6 - Baixar a imagem dl-docker, com bibliotecas de Deep Learning já configuradas.

```
$ docker pull floydhub/dl-docker:cpu
```


7 - Executar o script helloworld.py a partir de um container dl-docker.

Comandos úteis:
```
$ docker pull
$ docker images
$docker ps -a
$ docker run
$ docker exec
$ docker rm
$ docker rmi
```
