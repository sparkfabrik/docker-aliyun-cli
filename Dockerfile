FROM alpine:3.8
ENV ALIYUNCLI_VERSION 3.0.6
RUN wget https://github.com/aliyun/aliyun-cli/releases/download/v${ALIYUNCLI_VERSION}/aliyun-cli-linux-amd64.tar.gz  && \
    tar -xzvf *.tar.gz && \
    cp aliyun /usr/local/bin/
ENTRYPOINT [ "/usr/local/bin/aliyun" ]
