# ontos-core_zookeeper.dockerfile
#
# VERSION    1.0
#
FROM ubuntu:12.04
MAINTAINER Joshua Dotson, josh@knoesis.org

# Update the distro
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" \
      > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Install base dependencies
RUN add-apt-repository -y ppa:rquillo/ansible
RUN apt-get update
RUN apt-get install -y ansible
ADD ./ansible/ .

# Install ZooKeeper
RUN ansible-playbook ansible/knoesos-core_zookeeper.yml --connection=local

# Expose ZooKeeper
EXPOSE 28015

ENTRYPOINT ["zkServer.sh start-foreground"]

CMD ["--help"]
