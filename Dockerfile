FROM golang:1.15-alpine

ADD entrypoint.sh /entrypoint.sh
WORKDIR /src

ENTRYPOINT ["/entrypoint.sh"]
