FROM base

RUN apt-get -y update

# Upstart is broken in Docker, see http://dischord.org/blog/2013/07/10/docker-and-owncloud/
RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -s /bin/true /sbin/initctl

# sharutils for uuencode
RUN apt-get install -y apache2 sharutils

# ssl
RUN mkdir /etc/apache2/ssl
ADD start.sh /
RUN chmod u+x /start.sh
RUN a2enmod rewrite ssl
RUN a2ensite default-ssl

ADD dokuwiki-debconf.txt /tmp/
RUN debconf-set-selections < /tmp/dokuwiki-debconf.txt
RUN apt-get install -y dokuwiki

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2


EXPOSE 443

# ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["/start.sh"]

