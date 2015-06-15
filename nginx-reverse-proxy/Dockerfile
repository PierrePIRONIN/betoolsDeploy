# Pull base image.
FROM docker_ubuntubase
ENV DEBIAN_FRONTEND noninteractivie

# Install Nginx.
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R www-data:www-data /var/lib/nginx

# Define mountable directories.
VOLUME ["/etc/nginx/certs", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Copy all config files
COPY config/default.conf /etc/nginx/conf.d/default.conf
COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/config.sh /etc/nginx/config.sh
RUN ["chmod", "+x", "/etc/nginx/config.sh"]

# Define default command.
CMD /etc/nginx/config.sh && nginx
