#   Objectives:
    ##  1. Install Percona
    ##  2. Install Run

##  1. Install percona
FROM percona:5.7

# Install Run
USER root
RUN yum install cronie nano -y && \
    yum update -y && \
    mkhomedir_helper mysql
    # mkdir /www && \
    # chown -R mysql:mysql /www
#RUN mkdir -p /etc/mysql/conf.d
#RUN mkdir -p /etc/mysql/percona-server.conf.d/
#RUN touch /var/log/mysql/mysql_error.log /var/log/mysql/mysql_slow.log
#RUN chown mysql:mysql /var/log/mysql/mysql_error.log /var/log/mysql/mysql_slow.log
USER mysql
WORKDIR /home/mysql/

## Docker image name:                           percona-master
## Docker Hub Image Name:                       devtutspace/percona-master
## Docker Image Build command:                  docker build -t percona-master ./
## Docker Image Build No Cache command:         docker build --no-cache -t percona-master:5.7 ./
## Docker Image Tag command:                    docker tag percona-master:5.7 devtutspace/percona-master:5.7
## Docker Image Push command:                   docker push devtutspace/percona-master:5.7
## DOcker Image Build, Tag, Push:               docker build -t percona-master:5.7 ./ && docker tag percona-master:5.7 devtutspace/percona-master:5.7 && docker push devtutspace/percona-master:5.7