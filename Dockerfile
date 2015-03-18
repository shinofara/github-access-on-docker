FROM ubuntu:latest

RUN apt-get install -y git
#RUN eval `ssh-agent`

RUN echo "Host github.com\nStrictHostKeyChecking no\n" > /etc/ssh/ssh_config

WORKDIR /worker
CMD ["./exec.sh"]
 
