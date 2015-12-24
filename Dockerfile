FROM centos:6
MAINTAINER "Jan Garaj" <info@monitoringartist.com> (www.monitoringartist.com)

ADD container-files /tmp
RUN \
    yum install -y less wget which && \
    cd /tmp && \
    ls -lah && \
    chmod +x core-autodeploy.sh && \
    ./core-autodeploy.sh && \
    chmod +x run.sh && \
    mv run.sh /

CMD ["/run.sh"]
    
