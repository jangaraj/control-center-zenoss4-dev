FROM centos:centos7
MAINTAINER "Jan Garaj" <info@monitoringartist.com> (www.monitoringartist.com)

ADD container-files /tmp
RUN \
    yum install -y less wget
    cd /tmp
    chmod +x core-autodeploy.sh
    ./core-autodeploy.sh 
    