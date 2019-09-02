FROM jekyll/builder:3.7

MAINTAINER Cluster Fig Software <stefan@clusterfig.com>

RUN apk update

RUN apk add --no-cache \
build-base \
git \
openjdk8-jre \
fontconfig \
ttf-dejavu \
graphviz \
make && \
gem install bundler && \
gem install jekyll-plantuml && \
rm -rf /var/cache/apk/* 

RUN mkdir /opt && \
    mkdir /opt/plantuml && \
    wget http://sourceforge.net/projects/plantuml/files/plantuml.jar/download -O /opt/plantuml/plantuml.jar && \
    echo -e '#!/bin/bash\njava -jar /opt/plantuml/plantuml.jar "$1" "$2"' > /opt/plantuml/plantuml.sh && \
    chmod +x /opt/plantuml/plantuml.sh && \
    ln -s /opt/plantuml/plantuml.sh /usr/bin/plantuml

RUN ln -s /usr/lib/libfontconfig.so.1 /usr/lib/libfontconfig.so && \
    ln -s /lib/libuuid.so.1 /usr/lib/libuuid.so.1 && \
    ln -s /lib/libc.musl-x86_64.so.1 /usr/lib/libc.musl-x86_64.so.1

ENV LD_LIBRARY_PATH /usr/lib

RUN gem install jekyll-plantuml

COPY src/ /srv/jekyll

RUN bundle install 

COPY docs/ /srv/jekyll

COPY src/ /srv/jekyll

EXPOSE 4000

CMD [ "bundle", "exec", "jekyll", "serve", "-H", "0.0.0.0" ]