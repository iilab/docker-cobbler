#
# Cobbler Dockerfile
#
# https://github.com/iilab/docker-cobbler
#

# Pull base image.
FROM dockerfile/ubuntu

# Install Cobbler.
RUN \
  apt-get update && \
  apt-get install -y cobbler cobbler-web && \
  cobbler check && \

# Define mountable directories.
#VOLUME ["/data", "/etc/nginx/sites-enabled", "/var/log/nginx"]

# Define working directory.
#WORKDIR /etc/nginx

# Define default command.
#CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
