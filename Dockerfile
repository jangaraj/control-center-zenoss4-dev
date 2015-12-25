FROM centos:6
MAINTAINER "Jan Garaj" <info@monitoringartist.com> (www.monitoringartist.com)

ADD container-files /tmp
RUN \
    yum install -y less wget which epel-release && \
    yum install -y nginx && \
    cd /tmp && \
    mv default.conf /etc/nginx/conf.d && \
    chmod +x core-autodeploy.sh && \
    ./core-autodeploy.sh && \
    mv run.sh / && \
    chmod +x /run.sh && \
    /opt/zenoss/bin/zpasswd.py -u admin -p zenoss inituser && \
    service memcached stop && \
    service zenoss stop && \
    service snmpd stop 

WORKDIR /
CMD ["/run.sh"]
    
