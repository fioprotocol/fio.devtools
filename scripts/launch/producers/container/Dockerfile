FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade && apt-get install -y openssl curl jq iproute2 && groupadd fio && useradd -g fio -m fio
COPY ./bin/* /home/fio/bin/
COPY ./etc/* /home/fio/config/
RUN mkdir -p /home/fio/data; chown -R fio:fio /home/fio

USER fio
WORKDIR /home/fio
CMD /bin/bash /home/fio/bin/entrypoint.sh

