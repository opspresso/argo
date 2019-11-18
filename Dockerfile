# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v2.0.0-alpha3

RUN curl -sLO https://github.com/argoproj/argo/releases/download/${VERSION}/argo-linux-amd64 && \
    chmod +x argo-linux-amd64 && mv argo-linux-amd64 /usr/local/bin/argo

ENTRYPOINT ["bash"]
