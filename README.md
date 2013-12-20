knoesos
====

A warehouse scale operating system for the ages.

The following diagram is out of date and was intended as only a sketch, though the general idea persists. :)

![Service Dependencies](assets/png/knoesos-service-dependencies.png?raw=true "Service Dependencies")


### Role Dependency Graph

#### Pictorial

![Role Dependencies](assets/png/role-deps.png?raw=true "Role Dependencies")


#### Textual

- nodes -> apps
- nodes -> bases
- nodes -> containers
- nodes -> helpers
- nodes -> policies
- containers -> apps
- containers -> bases
- containers -> helpers
- containers -> policies
- bases -> apps
- bases -> helpers
- bases -> policies
- policies -> apps
- policies -> helpers
- helpers -> apps


### Node Example

```
core-n:
  apps:
    util:
      - ansible
      - cloud-utils
      - curl
      - debootstrap
      - dos2unix
      - fail2ban
      - file
      - firefox
      - gnupg
      - logrotate
      - lsof
      - nmap
      - rkhunter
      - rsync
      - run-one
      - terminator
      - watch
      - vim
      - xauth
      - zenmap
    client:
      - apt
      - ceph
      - freeipa
      - git
      - lumberjack
      - juju
      - openssh
      - redis
      - sensu
    server:
      - corosync
      - docker
      - drbd
      - libvirt
      - lxc
      - openssh
      - pacemaker
      - smartd
      - ufw
  containers:
    util:
    client:
    server:
      - ceph (mds)
      - ceph (mon)
      - elasticsearch
      - exhibitor
      - freeipa
      - dashboard
      - gitlab
      - graphite
      - graphiti
      - jenkins
      - juju
      - kibana
      - haproxy
      - logstash
      - maas
      - marathon
      - mesos
      - openvpn
      - otrs
      - redis
      - sensu
      - sensu-admin
      - squid
```

### AGPLv3 License
```
    KnoesOS -- A warehouse scale operating system for the ages.
    Copyright (C) 2013 Kno.e.sis, Joshua Dotson

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
```
