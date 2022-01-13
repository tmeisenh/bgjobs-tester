FROM debian:stable

## install basics
RUN apt-get update && apt-get install -y vim && mkdir /usr/local/scripts

COPY ./scripts/longRunning.sh /usr/local/scripts
COPY ./scripts/shortRunning.sh /usr/local/scripts
COPY ./scripts/master.sh /usr/local/scripts
RUN chmod +x /usr/local/scripts/longRunning.sh && chmod +x /usr/local/scripts/shortRunning.sh && chmod +x /usr/local/scripts/master.sh

ENTRYPOINT ["/bin/bash", "-c", "/usr/local/scripts/master.sh"]
