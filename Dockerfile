FROM ubuntu:bionic
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get --fix-missing update

# add some packages
RUN apt-get -y install dialog apt-utils wget
RUN wget -qO - https://raw.githubusercontent.com/yarnpkg/releases/gh-pages/debian/pubkey.gpg | apt-key add -

# enable add-apt-repository command:
RUN apt-get -y install software-properties-common 
RUN apt-get -y install autoconf 
RUN apt-get -y install libtool 
RUN apt-get -y install pkg-config 
RUN apt-get -y install nasm 
RUN apt-get -y install build-essential
RUN apt-get -y install autoconf
RUN apt-get -y install supervisor
RUN apt-get -y install libpng-dev
RUN apt-get -y install openssl
RUN apt-get -y install mysql-client

RUN apt-get install -y tzdata
RUN ln -fs /usr/share/zoneinfo/Europe/Rome /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata
