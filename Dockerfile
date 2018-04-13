#Dockerfile

FROM alpine

MAINTAINER Najar <denis.devel@gmail.com>
RUN echo nameserver 8.8.8.8 > /etc/resolv.conf; echo http://213.180.204.183/mirrors/alpine/v3.5/main > /etc/apk/repositories;  \
    echo http://213.180.204.183/mirrors/alpine/v3.5/community >> /etc/apk/repositories && \
    apk update && apk upgrade && apk add --no-cache bash git openssh

EXPOSE 22

CMD /usr/sbin/sshd 

