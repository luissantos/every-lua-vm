FROM alpine:3.7 as builder


RUN apk update
RUN apk add gcc
RUN apk add curl
RUN apk add make
RUN apk add musl-dev

ADD build-luajit.sh /opt/
RUN /opt/build-luajit.sh 2.0.5


ADD build-luarocks.sh /opt/
RUN /opt/build-luarocks.sh 2.4.4

FROM alpine:3.7

RUN mkdir /workspace/
WORKDIR /workspace/

COPY --from=builder /usr/local/ /usr/local/

RUN apk update
RUN apk add libgcc
RUN apk add curl

ENTRYPOINT ["/usr/bin/env", "luajit"]
