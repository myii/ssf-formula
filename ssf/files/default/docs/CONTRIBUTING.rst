.. _contributing:

How to contribute
=================

This document will eventually outline all aspects of guidance to make your contributing experience a fruitful and enjoyable one.
What it already contains is information about *commit message formatting* and how that directly affects the numerous automated processes that are used for this repo.
It also covers how to contribute to this *formula's documentation*.

.. contents:: **Table of Contents**

Overview
--------

Submitting a pull request is more than just code!
To achieve a quality product, the *tests* and *documentation* need to be updated as well.
An excellent pull request will include these in the changes, wherever relevant.

Commit message formatting
-------------------------

Since every type of change requires making Git commits,
we will start by covering the importance of ensuring that all of your commit
messages are in the correct format.

Automation of multiple processes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This formula uses `semantic-release <https://github.com/semantic-release/semantic-release>`_ for automating numerous processes such as bumping the version number appropriately, creating new tags/releases and updating the changelog.
The entire process relies on the structure of commit messages to determine the version bump, which is then used for the rest of the automation.

Full details are available in the upstream docs regarding the `Angular Commit Message Conventions <https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#-git-commit-guidelines>`_.
The key factor is that the first line of the commit message must follow this format:

.. code-block:: console

   type(scope): subject


* E.g. ``docs(contributing): add commit message formatting instructions``.

Besides the version bump, the changelog and release notes are formatted accordingly.
So based on the example above:

..

   .. raw:: html

      <h3>Documentation</h3>

   * **contributing:** add commit message formatting instructions


* The ``type`` translates into a ``Documentation`` sub-heading.
* The ``(scope):`` will be shown in bold text without the brackets.
* The ``subject`` follows the ``scope`` as standard text.

pre-commit
^^^^^^^^^^

`pre-commit <https://pre-commit.com/>`_ is configured for this formula, which you may
optionally use to ease the steps involved in submitting your changes, including
checking the formatting of your commit messages.

First install  the ``pre-commit`` package manager locally using the appropriate
`method <https://pre-commit.com/#installation>`_, then run ``bin/install-hooks`` in the
formula's root directory and now ``pre-commit`` will run automatically on each
``git commit``. ::

  $ bin/install-hooks
  pre-commit installed at .git/hooks/pre-commit
  pre-commit installed at .git/hooks/commit-msg

Linting commit messages in Travis CI
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This formula uses `commitlint <https://github.com/conventional-changelog/commitlint>`_ for checking commit messages during CI testing.
This ensures that they are in accordance with the ``semantic-release`` settings.

For more details about the default settings, refer back to the ``commitlint`` `reference rules <https://conventional-changelog.github.io/commitlint/#/reference-rules>`_.

Relationship between commit type and version bump
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This formula applies some customisations to the defaults, as outlined in the table below,
based upon the `type <https://github.com/angular/angular.js/blob/master/DEVELOPERS.md#type>`_ of the commit:

.. list-table::
   :name: commit-type-vs-version-bump
   :header-rows: 1
   :stub-columns: 0
   :widths: 1,2,3,1,1

   * - Type
     - Heading
     - Description
     - Bump (default)
     - Bump (custom)
   * - ``build``
     - Build System
     - Changes related to the build system
     - –
     -
   * - ``chore``
     - –
     - Changes to the build process or auxiliary tools and libraries such as
       documentation generation
     - –
     -
   * - ``ci``
     - Continuous Integration
     - Changes to the continuous integration configuration
     - –
     -
   * - ``docs``
     - Documentation
     - Documentation only changes
     - –
     - 0.0.1
   * - ``feat``
     - Features
     - A new feature
     - 0.1.0
     -
   * - ``fix``
     - Bug Fixes
     - A bug fix
     - 0.0.1
     -
   * - ``perf``
     - Performance Improvements
     - A code change that improves performance
     - 0.0.1
     -
   * - ``refactor``
     - Code Refactoring
     - A code change that neither fixes a bug nor adds a feature
     - –
     - 0.0.1
   * - ``revert``
     - Reverts
     - A commit used to revert a previous commit
     - –
     - 0.0.1
   * - ``style``
     - Styles
     - Changes that do not affect the meaning of the code (white-space,
       formatting, missing semi-colons, etc.)
     - –
     - 0.0.1
   * - ``test``
     - Tests
     - Adding missing or correcting existing tests
     - –
     - 0.0.1

Use ``BREAKING CHANGE`` to trigger a ``major`` version change
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Adding ``BREAKING CHANGE`` to the footer of the extended description of the commit message will **always** trigger a ``major`` version change, no matter which type has been used.
This will be appended to the changelog and release notes as well.
To preserve good formatting of these notes, the following format is prescribed:

* ``BREAKING CHANGE: <explanation in paragraph format>.``

An example of that:

.. code-block:: console

   ...

   BREAKING CHANGE: With the removal of all of the `.sls` files under
   `template package`, this formula no longer supports the installation of
   packages.


Semantic release formulas
-------------------------

These formulas are already compatible with semantic-release *and* have global ``CODEOWNERS`` defined:

#. `apache-formula <https://github.com/saltstack-formulas/apache-formula>`_
#. `apt-formula <https://github.com/saltstack-formulas/apt-formula>`_
#. `bind-formula <https://github.com/saltstack-formulas/bind-formula>`_
#. `caddy-formula <https://github.com/saltstack-formulas/caddy-formula>`_
#. `deepsea-formula <https://github.com/saltstack-formulas/deepsea-formula>`_
#. `devstack-formula <https://github.com/saltstack-formulas/devstack-formula>`_
#. `dhcpd-formula <https://github.com/saltstack-formulas/dhcpd-formula>`_
#. `dnsmasq-formula <https://github.com/saltstack-formulas/dnsmasq-formula>`_
#. `eclipse-formula <https://github.com/saltstack-formulas/eclipse-formula>`_
#. `fail2ban-formula <https://github.com/saltstack-formulas/fail2ban-formula>`_
#. `golang-formula <https://github.com/saltstack-formulas/golang-formula>`_
#. `haproxy-formula <https://github.com/saltstack-formulas/haproxy-formula>`_
#. `iptables-formula <https://github.com/saltstack-formulas/iptables-formula>`_
#. `iscsi-formula <https://github.com/saltstack-formulas/iscsi-formula>`_
#. `java-formula <https://github.com/saltstack-formulas/java-formula>`_
#. `jetbrains-appcode-formula <https://github.com/saltstack-formulas/jetbrains-appcode-formula>`_
#. `jetbrains-clion-formula <https://github.com/saltstack-formulas/jetbrains-clion-formula>`_
#. `jetbrains-datagrip-formula <https://github.com/saltstack-formulas/jetbrains-datagrip-formula>`_
#. `jetbrains-goland-formula <https://github.com/saltstack-formulas/jetbrains-goland-formula>`_
#. `jetbrains-intellij-formula <https://github.com/saltstack-formulas/jetbrains-intellij-formula>`_
#. `jetbrains-phpstorm-formula <https://github.com/saltstack-formulas/jetbrains-phpstorm-formula>`_
#. `jetbrains-pycharm-formula <https://github.com/saltstack-formulas/jetbrains-pycharm-formula>`_
#. `jetbrains-resharper-formula <https://github.com/saltstack-formulas/jetbrains-resharper-formula>`_
#. `jetbrains-rider-formula <https://github.com/saltstack-formulas/jetbrains-rider-formula>`_
#. `jetbrains-rubymine-formula <https://github.com/saltstack-formulas/jetbrains-rubymine-formula>`_
#. `jetbrains-webstorm-formula <https://github.com/saltstack-formulas/jetbrains-webstorm-formula>`_
#. `letsencrypt-formula <https://github.com/saltstack-formulas/letsencrypt-formula>`_
#. `libvirt-formula <https://github.com/saltstack-formulas/libvirt-formula>`_
#. `lvm-formula <https://github.com/saltstack-formulas/lvm-formula>`_
#. `lynis-formula <https://github.com/saltstack-formulas/lynis-formula>`_
#. `maven-formula <https://github.com/saltstack-formulas/maven-formula>`_
#. `mongodb-formula <https://github.com/saltstack-formulas/mongodb-formula>`_
#. `nginx-formula <https://github.com/saltstack-formulas/nginx-formula>`_
#. `nifi-formula <https://github.com/saltstack-formulas/nifi-formula>`_
#. `nut-formula <https://github.com/saltstack-formulas/nut-formula>`_
#. `openldap-formula <https://github.com/saltstack-formulas/openldap-formula>`_
#. `openntpd-formula <https://github.com/saltstack-formulas/openntpd-formula>`_
#. `openvpn-formula <https://github.com/saltstack-formulas/openvpn-formula>`_
#. `packages-formula <https://github.com/saltstack-formulas/packages-formula>`_
#. `php-formula <https://github.com/saltstack-formulas/php-formula>`_
#. `postfix-formula <https://github.com/saltstack-formulas/postfix-formula>`_
#. `postgres-formula <https://github.com/saltstack-formulas/postgres-formula>`_
#. `powerdns-formula <https://github.com/saltstack-formulas/powerdns-formula>`_
#. `proftpd-formula <https://github.com/saltstack-formulas/proftpd-formula>`_
#. `rng-tools-formula <https://github.com/saltstack-formulas/rng-tools-formula>`_
#. `rspamd-formula <https://github.com/saltstack-formulas/rspamd-formula>`_
#. `salt-formula <https://github.com/saltstack-formulas/salt-formula>`_
#. `sqldeveloper-formula <https://github.com/saltstack-formulas/sqldeveloper-formula>`_
#. `sqlplus-formula <https://github.com/saltstack-formulas/sqlplus-formula>`_
#. `strongswan-formula <https://github.com/saltstack-formulas/strongswan-formula>`_
#. `suricata-formula <https://github.com/saltstack-formulas/suricata-formula>`_
#. `sysctl-formula <https://github.com/saltstack-formulas/sysctl-formula>`_
#. `template-formula <https://github.com/saltstack-formulas/template-formula>`_
#. `vault-formula <https://github.com/saltstack-formulas/vault-formula>`_
#. `zabbix-formula <https://github.com/saltstack-formulas/zabbix-formula>`_

These formulas are also compatible with semantic-release:

56. `apt-cacher-formula <https://github.com/saltstack-formulas/apt-cacher-formula>`_
#. `cert-formula <https://github.com/saltstack-formulas/cert-formula>`_
#. `chrony-formula <https://github.com/saltstack-formulas/chrony-formula>`_
#. `collectd-formula <https://github.com/saltstack-formulas/collectd-formula>`_
#. `consul-formula <https://github.com/saltstack-formulas/consul-formula>`_
#. `cron-formula <https://github.com/saltstack-formulas/cron-formula>`_
#. `django-formula <https://github.com/saltstack-formulas/django-formula>`_
#. `docker-formula <https://github.com/saltstack-formulas/docker-formula>`_
#. `epel-formula <https://github.com/saltstack-formulas/epel-formula>`_
#. `exim-formula <https://github.com/saltstack-formulas/exim-formula>`_
#. `firewalld-formula <https://github.com/saltstack-formulas/firewalld-formula>`_
#. `grafana-formula <https://github.com/saltstack-formulas/grafana-formula>`_
#. `hostsfile-formula <https://github.com/saltstack-formulas/hostsfile-formula>`_
#. `icinga2-formula <https://github.com/saltstack-formulas/icinga2-formula>`_
#. `influxdb-formula <https://github.com/saltstack-formulas/influxdb-formula>`_
#. `keepalived-formula <https://github.com/saltstack-formulas/keepalived-formula>`_
#. `locale-formula <https://github.com/saltstack-formulas/locale-formula>`_
#. `logrotate-formula <https://github.com/saltstack-formulas/logrotate-formula>`_
#. `mysql-formula <https://github.com/saltstack-formulas/mysql-formula>`_
#. `nfs-formula <https://github.com/saltstack-formulas/nfs-formula>`_
#. `node-formula <https://github.com/saltstack-formulas/node-formula>`_
#. `ntp-formula <https://github.com/saltstack-formulas/ntp-formula>`_
#. `openssh-formula <https://github.com/saltstack-formulas/openssh-formula>`_
#. `prometheus-formula <https://github.com/saltstack-formulas/prometheus-formula>`_
#. `rabbitmq-formula <https://github.com/saltstack-formulas/rabbitmq-formula>`_
#. `redis-formula <https://github.com/saltstack-formulas/redis-formula>`_
#. `rkhunter-formula <https://github.com/saltstack-formulas/rkhunter-formula>`_
#. `snmp-formula <https://github.com/saltstack-formulas/snmp-formula>`_
#. `stunnel-formula <https://github.com/saltstack-formulas/stunnel-formula>`_
#. `sudoers-formula <https://github.com/saltstack-formulas/sudoers-formula>`_
#. `syslog-ng-formula <https://github.com/saltstack-formulas/syslog-ng-formula>`_
#. `sysstat-formula <https://github.com/saltstack-formulas/sysstat-formula>`_
#. `systemd-formula <https://github.com/saltstack-formulas/systemd-formula>`_
#. `telegraf-formula <https://github.com/saltstack-formulas/telegraf-formula>`_
#. `timezone-formula <https://github.com/saltstack-formulas/timezone-formula>`_
#. `tomcat-formula <https://github.com/saltstack-formulas/tomcat-formula>`_
#. `ufw-formula <https://github.com/saltstack-formulas/ufw-formula>`_
#. `users-formula <https://github.com/saltstack-formulas/users-formula>`_
#. `varnish-formula <https://github.com/saltstack-formulas/varnish-formula>`_
#. `vim-formula <https://github.com/saltstack-formulas/vim-formula>`_
#. `vsftpd-formula <https://github.com/saltstack-formulas/vsftpd-formula>`_

Documentation
-------------

`Documentation contributing guidelines <https://github.com/saltstack-formulas/template-formula/blob/master/docs/CONTRIBUTING_DOCS.rst>`_
