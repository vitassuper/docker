FROM phpdockerio/php72-fpm:latest
WORKDIR "/public_html"

# Fix debconf warnings upon build
ARG DEBIAN_FRONTEND=noninteractive

#Update packages
RUN apt-get update

# Install selected extensions and other stuff
RUN apt-get -y --no-install-recommends install php7.2-mysql php7.2-xdebug php7.2-gd \
 php7.2-soap php7.2-xsl php7.2-ldap php7.2-intl git mysql-client

#Clean up
RUN apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*

#Change user and group ids
RUN usermod -u 1000 www-data && groupmod -g 1000 www-data