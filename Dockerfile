# DOCKER-VERSION 1.8.2
FROM ubuntu:latest

# Install Node.js and npm
RUN apt-get -y update
RUN apt-get -y install nodejs
RUN apt-get -y install npm

# Bundle app source
ADD . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080
CMD ["nodejs", "/src/index.js"]