Docker
=========

Sets up docker from official package repositories.

Requirements
------------

This role is compatible with:

- Ubuntu 16.04
- Debian 8
- CentOS 7

And should be compatible with:

- RHEL 7

Role Variables
--------------

 - upstream_docker: boolean
   - Set to true if you want to install the latest docker-ce from docker.io, rather than using distribution packages


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: docker
      roles:
        - docker

License
-------

BSD
