
#
# Node.js v6.3.1
#

FROM ubuntu:14.04
MAINTAINER Marcus André <hello@marcusandre.de>
ENV VERSION 6.3.1

#
# System
#

RUN apt-get update -qq
RUN apt-get install -y make gcc g++ python curl libssl-dev

#
# Install node
#

RUN curl -L# http://nodejs.org/dist/v$VERSION/node-v$VERSION-linux-x64.tar.gz | tar -zx --strip 1 -C /usr/local

#
# Clean up
#

RUN rm -fr /usr/src/node

#
# Entry
#

CMD ["node"]

# Usage: docker run --rm -it $IMAGE
