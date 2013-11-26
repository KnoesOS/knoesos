KnoesOS
----

Ansible Roles Dependency Graph
=====

### Pictorial

![Role Dependencies](../assets/png/role-deps.png?raw=true "Role Dependencies")


### Textual

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
