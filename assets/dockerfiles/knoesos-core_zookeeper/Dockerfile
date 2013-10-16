# ontos-core_zookeeper.dockerfile
#
# VERSION    0.1.0
#
FROM ubuntu:12.04
MAINTAINER Joshua Dotson, josh@knoesis.org

# Update distribution
RUN ( echo 'deb http://archive.ubuntu.com/ubuntu precise main' && \
      echo 'deb http://archive.ubuntu.com/ubuntu precise-updates main' && \
      echo 'deb http://security.ubuntu.com/ubuntu precise-security main' && \
      echo 'deb http://archive.ubuntu.com/ubuntu precise universe' && \
      echo 'deb http://archive.ubuntu.com/ubuntu precise-updates universe' \
    ) > /etc/apt/sources.list \
      && apt-mark hold upstart \
      && apt-mark hold initscripts \
      && apt-get update \
      && apt-get upgrade -y \
      && apt-get clean

# Install base dependencies (Ubuntu <= 12.04)
RUN apt-get install curl python-software-properties -y \
      && add-apt-repository ppa:rquillo/ansible -y \
      && apt-get update \
      && apt-get install ansible -y \
      && apt-get clean

# Add files
ADD . ./DockerDNA

# Install ZooKeeper
RUN ( echo '[knoesos-core_zookeeper]' && \
      echo 'localhost' \
    ) > /etc/ansible/hosts \
      && ansible-playbook ./DockerDNA/dna.yml --connection=local

# Expose ZooKeeper
EXPOSE 28015

#ENTRYPOINT ["zkServer.sh start-foreground"]

#CMD ["--help"]
