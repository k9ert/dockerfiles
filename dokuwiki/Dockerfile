FROM base

RUN apt-get update
RUN apt-get install -y apache2

ADD dokuwiki-debconf.txt /tmp/
RUN debconf-set-selections < /tmp/dokuwiki-debconf.txt
RUN apt-get install -y dokuwiki

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]

