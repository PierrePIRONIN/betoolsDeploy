# Pull base image.
FROM docker_ubuntubase

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get update --fix-missing

RUN apt-get install -y nodejs gcc make build-essential openssl make node-gyp
RUN npm install -g npm@latest
RUN npm install -g pm2@latest
RUN apt-get update --fix-missing

RUN mkdir -p /var/log/betools
RUN mkdir -p /var/www/html

# Cleanup
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN apt-get autoremove -y
RUN ln -s /usr/bin/nodejs /usr/local/bin/node

WORKDIR /var/www/html

CMD ["pm2", "start", "server.js","--name","betools","--log","/var/log/betools/betools.log","--watch","--no-daemon"]
