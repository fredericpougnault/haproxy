FROM centos:centos7.9.2009
COPY haproxy.repo /etc/yum.repos.d/
ADD start.sh /
RUN yum install -y epel-release
RUN yum install -y haproxy
RUN yum clean all
EXPOSE 443
CMD ["/start.sh"]
VOLUME /etc/haproxy/
