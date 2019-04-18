#   Objectives:
    ##  1. Install Percona
    ##  2. Install Run

##  1. Install percona
FROM percona

# Install Run
USER root
RUN mkhomedir_helper mysql && \
    mkdir /www && \
    chown -R mysql:mysql /www


USER mysql
WORKDIR /home/mysql/

## Docker image name:                           percona-master
## Docker Hub Image Name:                       kimlonglecis/percona-master
## Docker Image Build command:                  docker build -t percona-master ./
## Docker Image Build No Cache command:         docker build --no-cache -t percona-master ./
## Docker Image Tag command:                    docker tag percona-master kimlonglecis/percona-master
## Docker Image Push command:                   docker push kimlonglecis/percona-master
## DOcker Image Build, Tag, Push:               docker build -t percona-master ./ && \docker tag percona-master kimlonglecis/percona-master && docker push kimlonglecis/percona-master