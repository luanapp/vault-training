FROM alpine:latest

WORKDIR /vault

RUN apk --no-cache add \
    bash \
    ca-certificates \
    curl

RUN curl -fsSL https://releases.hashicorp.com/vault/1.8.2/vault_1.8.2_linux_amd64.zip > vault.zip && \
    unzip vault.zip && \
    mv vault /usr/local/bin && \
    rm -rf vault.zip

RUN curl -fsSL https://releases.hashicorp.com/consul/1.10.2/consul_1.10.2_linux_amd64.zip > consul.zip && \
    unzip consul.zip && \
    mv consul /usr/local/bin/consul && \
    rm -rf consul.zip

RUN mkdir /vault/data && \
    mkdir /vault/logs

COPY config.hcl .
COPY consul.hcl .
COPY entrypoint.sh .

EXPOSE 8200 8300 8500

ENTRYPOINT [ "./entrypoint.sh" ]