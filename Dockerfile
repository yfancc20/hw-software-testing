FROM ubuntu:18.04
WORKDIR /home

RUN apt update
RUN apt install -y vim git curl 

# install node.js (default: 8.10.0)
RUN apt install -y nodejs

# install yarn
RUN apt install -y gnupg2
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install -y yarn

EXPOSE 8080