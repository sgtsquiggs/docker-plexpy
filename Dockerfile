FROM sgtsquiggs/alpine:3.4
MAINTAINER sgtsquiggs

RUN \
# install packages
    apk add --no-cache \
        git \
        python

# add local files
COPY root/ /

# ports and volumes
VOLUME /config /logs
EXPOSE 8181
