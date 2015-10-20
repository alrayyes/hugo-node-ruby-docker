FROM golang
MAINTAINER Ryan Kes <ryan@andthensome.nl>
RUN wget https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_amd64.deb \
    && dpkg -i hugo_0.14_amd64.deb \
    && rm hugo_0.14_amd64.deb \
    && rm -rf /var/lib/apt/lists/* \
