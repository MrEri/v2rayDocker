FROM ubuntu

MAINTAINER docker_user  "docker@aa.ml"

COPY run.sh ./run.sh

## update and install the image
RUN mkdir -p /etc/v2ray && apt-get update && apt-get install -y curl zip screen nano lsof nginx openssh-server && sh ./run.sh

COPY config.json /etc/v2ray/config.json
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 8443 22 80 443 

CMD ["/usr/sbin/sshd", "-D", "-e"]
#COPY config.json ~/config.json

#RUN v2ray run -c ~/config.json
