PHP
=========

Installs PHP from the IUS repo maintained by RackSpace.

Requirements
------------

This role assumes CentOS 7.

Role Variables
--------------

- ius_repo_url
  - URL to the IUS repository RPM.
- php_packages
  - List of initial PHP packages to install along with the role.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - php

License
-------

BSD

