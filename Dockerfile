FROM ubuntu:bionic
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get --fix-missing update && apt-get -y upgrade && apt-get -y install apt-utils dialog rsyslog wget software-properties-common autoconf libtool pkg-config nasm build-essential supervisor libpng-dev openssl mysql-client curl git vim tzdata p7zip-full unzip
# configure timezone
RUN ln -fs /usr/share/zoneinfo/Europe/Rome /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata
