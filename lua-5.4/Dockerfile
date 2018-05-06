FROM alpine:3.7 as builder


RUN apk update
RUN apk add gcc
RUN apk add curl
RUN apk add make
RUN apk add musl-dev
RUN apk add readline-dev

ADD build-lua.sh /opt/
RUN /opt/build-lua.sh 5.4.0-work1

FROM alpine:3.7

RUN mkdir /workspace/
WORKDIR /workspace/

COPY --from=builder /usr/local/ /usr/local/

RUN apk update
RUN apk add readline
RUN apk add curl

ENTRYPOINT ["/usr/bin/env", "lua"]
