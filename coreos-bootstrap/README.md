CoreOS Bootstrap
=========

Installs PyPy2 into /opt for use with Ansible.

Requirements
------------

Tested with CoreOS 991 and later.

Role Variables
--------------

None

Example Playbook
----------------

The setup step must be skipped by adding gather_facts: no - python isn't installed yet.

    - hosts: docker-coreos
      become: true
      gather_facts: no
      roles:
        - coreos-bootstrap


A variable then needs to be set for CoreOS hosts in your inventory file pointing to the Python interpreter, like so:

    [coreos:vars]
    ansible_user=core
    ansible_python_interpreter=/home/core/bin/python

License
-------

BSD
