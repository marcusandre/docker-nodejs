
#
# Node.js v0.11.10
#
# VERSION 0.0.1
#

FROM ubuntu:12.10
MAINTAINER Marcus André <hello@marcusandre.de>

#
# Update OS
#

RUN echo "deb http://archive.ubuntu.com/ubuntu quantal main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

#
# Install dependencies
#

RUN apt-get install -y make gcc g++ python git libssl-dev

#
# Install node
#

RUN git clone https://github.com/joyent/node.git /usr/src/node/
RUN cd /usr/src/node && git checkout v0.11.10 && ./configure && make && make install

#
# Clean up
#

RUN rm -fr /usr/src/node

#
# Entry
#

CMD ["/bin/bash"]

# Usage: docker run -t -i $IMAGE
