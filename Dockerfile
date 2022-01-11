FROM openjdk:alpine

RUN apk --update add bash openssl

WORKDIR /tls

# copy files
COPY generate-certs /usr/local/bin/generate-certs
COPY *.cnf /tls-conf/

# apply permissions
RUN chmod +x /usr/local/bin/generate-certs

CMD /usr/local/bin/generate-certs

VOLUME /tls
