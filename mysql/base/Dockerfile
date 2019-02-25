FROM bitnami/mysql:latest

COPY ./build/my_custom.cnf /opt/bitnami/mysql/conf/my_custom.cnf

USER root

ARG TZ=Africa/Johannesburg
RUN apt-get install -y --no-install-recommends tzdata bash \
  && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
  && echo $TZ > /etc/timezone

USER 1001
