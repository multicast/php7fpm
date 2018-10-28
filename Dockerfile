#
# Dockerfile
#
FROM mkovac/stretch:latest
MAINTAINER Matej Kovac <matej.kovac@gmail.com>

COPY build /root/build

RUN run-parts --report --exit-on-error /root/build/scripts && \
  rm -rfv /root/build /root/assets

# php7-fpm
#
EXPOSE 9999

# let /var/www be a volume
#
VOLUME /var/www

# from parent...
#ENTRYPOINT ["/sbin/entrypoint.sh"]
# from parent...
#CMD ["/usr/bin/dumb-init", "/etc/rc.local"]
