# ontos-core_zookeeper.dockerfile
#
# VERSION    1.0
#
FROM ubuntu:12.04
MAINTAINER Joshua Dotson, josh@knoesis.org

# Update the distro
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" \
      > /etc/apt/sources.list \
    && apt-get update \
    && apt-get upgrade -y

# Install base dependencies
RUN apt-get install python-software-properties -y  # <= Ubuntu 12.04
#RUN apt-get install software-properties-common -y  # >= Ubuntu 12.10

# Install Ansible
RUN add-apt-repository ppa:rquillo/ansible -y
RUN apt-get update
RUN apt-get install ansible -y
ADD . ./knoesos

# Install ZooKeeper
#RUN ansible-playbook ./knoesos/ansible/knoesos-core_zookeeper.yml --connection=local

# Expose ZooKeeper
EXPOSE 28015

ENTRYPOINT ["zkServer.sh start-foreground"]

CMD ["--help"]
