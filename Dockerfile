
#
# Node.js v6.3.0
#

FROM alpine
MAINTAINER Marcus André <hello@marcusandre.de>
ENV VERSION 6.3.0-r0

# install `node`
RUN apk --update --no-cache add nodejs \
  --update-cache \
  --allow-untrusted \
  --repository http://dl-3.alpinelinux.org/alpine/edge/

# start `node`
CMD ["node"]
