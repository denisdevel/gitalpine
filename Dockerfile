#Dockerfile

FROM alpine

MAINTAINER Najar <denis.devel@gmail.com>

RUN apk update && apk add openssh git

EXPOSE 22

CMD /usr/sbin/sshd 

