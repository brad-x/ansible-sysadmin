Postfix
=========

Sets a host up with Postfix MTA

Requirements
------------

This has been tested with recent CentOS, Ubuntu and Debian. Due to similarity of package layout there are no distribution specifics in this role.

Role Variables
--------------

- mail_domain
  - Sets the 'mydomain' parameter in postfix configuration file.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - postfix

License
-------

BSD
