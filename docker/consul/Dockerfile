FROM alpine:latest

ARG CONFIG_FILE=consul.hcl

WORKDIR /consul

RUN apk --no-cache add \
    bash \
    ca-certificates \
    curl

RUN curl -fsSL https://releases.hashicorp.com/consul/1.10.2/consul_1.10.2_linux_amd64.zip > consul.zip && \
    unzip consul.zip && \
    mv consul /usr/local/bin/consul && \
    rm -rf consul.zip

RUN mkdir /consul/data && \
    mkdir /consul/logs

COPY ${CONFIG_FILE} ./consul.hcl
COPY entrypoint.sh .

EXPOSE 8300 8400 8500 8600 8301

ENTRYPOINT [ "./entrypoint.sh" ]