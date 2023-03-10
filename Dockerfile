FROM debian:stable

RUN apt-get update && \
    apt-get install -y curl jq

COPY brands .
COPY crawler.sh .

ENTRYPOINT [ "./crawler.sh" ]
