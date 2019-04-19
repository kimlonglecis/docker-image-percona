#   Objectives:
    ##  1. Install Percona
    ##  2. Install Run

##  1. Install percona
FROM percona

# Install Run
USER root
RUN yum install cronie nano -y && \
    yum update -y && \
    mkhomedir_helper mysql && \
    mkdir /www && \
    chown -R mysql:mysql /www
RUN mkdir -p /etc/mysql/conf.d
RUN mkdir -p /etc/mysql/percona-server.conf.d/
#RUN touch /var/log/mysql/mysql_error.log /var/log/mysql/mysql_slow.log
#RUN chown mysql:mysql /var/log/mysql/mysql_error.log /var/log/mysql/mysql_slow.log
USER mysql
WORKDIR /home/mysql/

## Docker image name:                           percona-master
## Docker Hub Image Name:                       devtutspace/percona-master
## Docker Image Build command:                  docker build -t percona-master ./
## Docker Image Build No Cache command:         docker build --no-cache -t percona-master ./
## Docker Image Tag command:                    docker tag percona-master devtutspace/percona-master
## Docker Image Push command:                   docker push devtutspace/percona-master
## DOcker Image Build, Tag, Push:               docker build -t percona-master ./ && docker tag percona-master devtutspace/percona-master && docker push devtutspace/percona-master