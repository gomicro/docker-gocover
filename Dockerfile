FROM golang:1.17-alpine

ADD entrypoint.sh /entrypoint.sh
WORKDIR /src

ENTRYPOINT ["/entrypoint.sh"]
