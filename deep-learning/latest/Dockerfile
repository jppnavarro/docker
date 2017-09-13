#Imagem base.
FROM jppnavarro/deep-learning:dev

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt \
    && rm /tmp/requirements.txt

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

