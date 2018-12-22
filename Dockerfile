FROM alpine:3.8 as dl
ENV ALIYUNCLI_VERSION 3.0.6
WORKDIR /tmp
RUN apk add --no-cache curl \
    && curl -L -o aliyun-cli-linux-amd64.tar.gz https://github.com/aliyun/aliyun-cli/releases/download/v${ALIYUNCLI_VERSION}/aliyun-cli-linux-amd64.tar.gz \
    && tar zxvf aliyun-cli-linux-amd64.tar.gz

FROM alpine:3.8
COPY --from=dl /tmp/aliyun /usr/local/bin/aliyun
ENTRYPOINT [ "/usr/local/bin/aliyun" ]
