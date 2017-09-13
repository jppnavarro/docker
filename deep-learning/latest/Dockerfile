#Imagem base.
FROM floydhub/dl-docker:cpu

RUN apt-get update && apt-get install -y \
	python3-dev \
	python3-pip \
	curl \
	\
	&& pip3 install --upgrade pip

#Configurações para utilização de usuário do host.
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4
RUN curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/1.4/gosu-$(dpkg --print-architecture)" \
    && curl -o /usr/local/bin/gosu.asc -SL "https://github.com/tianon/gosu/releases/download/1.4/gosu-$(dpkg --print-architecture).asc" \
    && gpg --verify /usr/local/bin/gosu.asc \
    && rm /usr/local/bin/gosu.asc \
    && chmod +x /usr/local/bin/gosu

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENV PYCHARM_VERSION 2017.2.3

RUN wget -O pycharm.tar.gz "https://download.jetbrains.com/python/pycharm-community-$PYCHARM_VERSION.tar.gz" \
    && mkdir -p /usr/src/pycharm \
    && tar -xzf pycharm.tar.gz -C /usr/src/pycharm \
    && rm pycharm.tar.gz

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt \
    && rm /tmp/requirements.txt

#Links.
RUN cd /usr/local/bin \
    && ln -s /usr/src/pycharm/pycharm-community-$PYCHARM_VERSION/bin/pycharm.sh pycharm


RUN echo "root:1234" | chpasswd

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

