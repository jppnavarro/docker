
#Imagem base.
FROM jppnavarro/deep-learning:sys

ENV PYCHARM_VERSION 2017.2.3

RUN wget -O pycharm.tar.gz "https://download.jetbrains.com/python/pycharm-community-$PYCHARM_VERSION.tar.gz" \
    && mkdir -p /usr/src/pycharm \
    && tar -xzf pycharm.tar.gz -C /usr/src/pycharm \
    && rm pycharm.tar.gz

#Links.
RUN cd /usr/local/bin \
    && ln -s /usr/src/pycharm/pycharm-community-$PYCHARM_VERSION/bin/pycharm.sh pycharm

