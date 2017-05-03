FROM php:7.0-alpine

#RUN apk add --no-cache autoconf file g++ gcc libc-dev make pkgconf re2c openssl ca-certificates linux-headers clang
#RUN wget ftp://ftp.freetds.org/pub/freetds/stable/freetds-1.00.24.tar.gz
#RUN tar xzvf freetds-1.00.24.tar.gz
#
#RUN cd freetds-1.00.24 && \
#      wget https://git.alpinelinux.org/cgit/aports/plain/main/freetds/fix-includes.patch && \
#      patch -p1 -i fix-includes.patch && \
#      CC=clang ./configure --prefix=/usr --sysconfdir=/etc --mandir=/usr/share/man --infodir=/usr/share/info && \
#      CC=clang make && \
#      make install
#
#RUN docker-php-source extract && \
#      cd /usr/src/php/ext/pdo_dblib && \
#      phpize && \
#      CC=clang ./configure && \
#      CC=clang make && \
#      make install && \
#      docker-php-ext-enable pdo_dblib

RUN apk add --no-cache freetds-dev
RUN docker-php-ext-install pdo_dblib

WORKDIR /opt
COPY check.php /opt

CMD sleep 30 && php /opt/check.php