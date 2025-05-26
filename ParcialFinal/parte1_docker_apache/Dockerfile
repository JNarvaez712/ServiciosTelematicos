FROM ubuntu:22.04

RUN apt update && apt install -y \
    apache2 \
    libapache2-mod-wsgi-py3 \
    python3 \
    python3-pip \
    default-libmysqlclient-dev \
    build-essential \
    pkg-config \
    libssl-dev \
    libffi-dev \
    libxml2-dev \
    libxslt1-dev \
    zlib1g-dev \
    openssl && \
    a2enmod ssl wsgi rewrite

COPY webapp /var/www/webapp
WORKDIR /var/www/webapp

RUN pip3 install flask flask_sqlalchemy mysqlclient

COPY apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY apache/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf
COPY apache/ssl /etc/apache2/ssl

RUN a2ensite default-ssl.conf

EXPOSE 80 443
CMD ["apachectl", "-D", "FOREGROUND"]
