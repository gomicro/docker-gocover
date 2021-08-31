FROM golang:1.16-alpine

ADD entrypoint.sh /entrypoint.sh
WORKDIR /src

ENTRYPOINT ["/entrypoint.sh"]
