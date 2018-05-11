# docker build --tag ansible-py3 --network host .
# docker run --interactive --tty --rm --volume /home/joey/Development/ansiblefiles:/home/ansibleuser/ansiblefiles --volume /home/joey/.ssh:/home/ansibleuser/.ssh:ro --network host ansible-py3 bash

FROM python:3.6

RUN useradd --uid 1000 --user-group ansibleuser && \
    mkdir --parents /home/ansibleuser/.ansible && \
    chown --recursive ansibleuser:ansibleuser /home/ansibleuser && \
    apt-get update && \
    apt-get install sshpass && \
    apt-get clean && \
    pip3 install ansible passlib

VOLUME /home/ansibleuser/ansiblefiles
VOLUME /home/ansibleuser/.ssh
USER ansibleuser
WORKDIR /home/ansibleuser/ansiblefiles
