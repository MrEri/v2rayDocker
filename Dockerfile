FROM ubuntu

MAINTAINER docker_user  "docker@aa.ml"

COPY ["run.sh","config.json" "./"]
## update and install the image
RUN apt-get update && apt-get install -y curl wget openssh-server && sh ./run.sh

#COPY config.json /etc/v2ray/config.json

EXPOSE 8443 22 80 443 

CMD ["/usr/sbin/sshd", "-D", "-e"]
#COPY config.json ~/config.json

#RUN v2ray run -c ~/config.json
