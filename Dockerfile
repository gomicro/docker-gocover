FROM golang:1.14-alpine

ADD entrypoint.sh /entrypoint.sh
WORKDIR /src

ENTRYPOINT ["/entrypoint.sh"]
