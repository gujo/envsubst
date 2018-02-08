FROM alpine:3.6
MAINTAINER Johan Gunnarsson <johan@diversal.se>
RUN apk --update add gettext-dev

ADD envsubst-file.sh /
RUN chmod +x /envsubst-file.sh

ENTRYPOINT ["/envsubst-file.sh"]
