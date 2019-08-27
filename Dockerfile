M centos:7

RUN yum -y install openssh openssh-clients openssh-server
EXPOSE 22

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/sshd", "-D"]

