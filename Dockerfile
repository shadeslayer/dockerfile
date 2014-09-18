FROM debian:unstable
MAINTAINER Rohan Garg <rohan@kde.org>

RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install less
RUN apt-get -y install live-build live-images && mkdir -p /home/buildd && cd /home/buildd && cp -aR /usr/share/live/images/kde-desktop/* .
