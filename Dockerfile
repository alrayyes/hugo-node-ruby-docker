FROM ubuntu:14.04
MAINTAINER Ryan Kes <ryan@andthensome.nl>
RUN curl -sL https://deb.nodesource.com/setup | sudo bash -
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y golang git wget nodejs npm git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
RUN wget https://github.com/spf13/hugo/releases/download/v0.14/hugo_0.14_amd64.deb && dpkg -i hugo_0.14_amd64.deb && rm hugo_0.14_amd64.deb
RUN cd && git clone git://github.com/sstephenson/rbenv.git .rbenv && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile && echo 'eval "$(rbenv init -)"' >> ~/.bash_profile && git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build && echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile && . ~/.bash_profile && rbenv install -v 2.2.3 && rbenv global 2.2.3 && echo "gem: --no-document" > ~/.gemrc && gem install bundler
