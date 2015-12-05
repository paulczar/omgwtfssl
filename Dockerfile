FROM alpine

RUN apk --update add bash openssl

WORKDIR /certs

COPY * /usr/local/bin/

CMD /usr/local/bin/generate-certs
