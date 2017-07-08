FROM node:latest

MAINTAINER Kássia Catarine <kassia_catarine.15@hotmail.com>

ENV PURESCRIPT_DOWNLOAD_SHA1 87de6ef5d9cf7eee059a9be6c61b5711abf121df

RUN npm install -g bower pulp rxjs snabbdom

RUN cd /opt \
    && wget https://github.com/purescript/purescript/releases/download/v0.11.5/linux64.tar.gz \
    && echo "$PURESCRIPT_DOWNLOAD_SHA1 linux64.tar.gz" | sha1sum -c - \
    && tar -xvf linux64.tar.gz \
    && rm /opt/linux64.tar.gz

RUN adduser --disabled-password --gecos '' user && \
    adduser user sudo && \
    echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
    
RUN mkdir /home/purescript \
    && chown -R user /home/purescript

ENV PATH /opt/purescript:$PATH

CMD ["/opt/purescript/psci"]
