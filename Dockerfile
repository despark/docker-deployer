FROM alpine:latest

RUN apk --no-cache --update add openssh-client curl php php-phar php-iconv php-mbstring

RUN curl -LO https://deployer.org/deployer.phar && \
    mv deployer.phar /usr/local/bin/dep && \
    chmod +x /usr/local/bin/dep

CMD dep