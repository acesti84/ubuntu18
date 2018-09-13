FROM ubuntu:bionic
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get --fix-missing update

# add some packages
RUN apt-get -y install dialog 
RUN apt-get -y install apt-utils 
RUN apt-get -y install wget
RUN apt-get -y install software-properties-common 
RUN apt-get -y install autoconf 
RUN apt-get -y install libtool 
RUN apt-get -y install pkg-config 
RUN apt-get -y install nasm 
RUN apt-get -y install build-essential
RUN apt-get -y install supervisor
RUN apt-get -y install libpng-dev
RUN apt-get -y install openssl
RUN apt-get -y install mysql-client
RUN apt-get -y install curl 
RUN apt-get -y install git 
RUN apt-get -y install vim 
RUN apt-get -y install tzdata

# configure timezone
RUN ln -fs /usr/share/zoneinfo/Europe/Rome /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata
