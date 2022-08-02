FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server

COPY ./conf/db.cnf  /etc/mysql/mariadb.conf.d/

EXPOSE 80/tcp