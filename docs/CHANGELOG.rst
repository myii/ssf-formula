
Changelog
=========

`0.2.0 <https://github.com/myii/ssf-formula/compare/v0.1.1...v0.2.0>`_ (2019-08-03)
---------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **defaults:** update commit message version in ``semantic-release`` run (\ `9382692 <https://github.com/myii/ssf-formula/commit/9382692>`_\ )

Features
^^^^^^^^


* **php:** update deprecation version number in ``semantic-release`` run (\ `8e2c546 <https://github.com/myii/ssf-formula/commit/8e2c546>`_\ ), closes `/github.com/saltstack-formulas/php-formula/pull/175#issuecomment-517492613 <https://github.com//github.com/saltstack-formulas/php-formula/pull/175/issues/issuecomment-517492613>`_ `/github.com/saltstack-formulas/php-formula/pull/185#issuecomment-517603898 <https://github.com//github.com/saltstack-formulas/php-formula/pull/185/issues/issuecomment-517603898>`_

`0.1.1 <https://github.com/myii/ssf-formula/compare/v0.1.0...v0.1.1>`_ (2019-08-03)
---------------------------------------------------------------------------------------

Documentation
^^^^^^^^^^^^^


* **readme:** add initial ``Using this repo`` section (\ `ebfffcd <https://github.com/myii/ssf-formula/commit/ebfffcd>`_\ )

`0.1.0 <https://github.com/myii/ssf-formula/compare/v0.1.0-rc.5...v0.1.0>`_ (2019-08-03)
--------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **defaults:** update commit message version in ``semantic-release`` run (\ `f9b74e3 <https://github.com/myii/ssf-formula/commit/f9b74e3>`_\ )
* **formulas:** allow formula-level upstream branch via. pillar/config (\ `5320c2e <https://github.com/myii/ssf-formula/commit/5320c2e>`_\ )

0.1.0-rc.5 (2019-08-02)
-----------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **config.formulas:** centralise the add/rm functionality

Features
^^^^^^^^


* **config.formulas:** use per-file override for ``semrel_formula`` name
* **kitchen:** use single unmatching ``includes`` rather than all ``excludes``

0.1.0-rc.4 (2019-07-31)
-----------------------

Documentation
^^^^^^^^^^^^^


* **readme:** add to this formula

Features
^^^^^^^^


* **formula:** add ``dhcpd-formula``
* **libvirt:** update with latest upstream changes

Styles
^^^^^^


* **config.formulas:** improve comments, format and state names
* **config.formulas:** use YAML block scalar (folded+strip) for ``args``

0.1.0-rc.3 (2019-07-30)
-----------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **formula:** use extend with node anchors for ``semrel_files``
* **yaml:** use extend with node anchors wherever possible

Features
^^^^^^^^


* **config.formulas:** includes ``files`` within each ``formula``
* **formula:** add ``ssf-formula``
* **formula:** add ``stack-formula``
* **tofs:** add updated ``CONTRIBUTING`` for ``template-formula``
* **travis:** ensure formulas without ``platforms`` don't run tests

Styles
^^^^^^


* **platforms_matrix:** align ``inspec_suite`` as the last column

0.1.0-rc.2 (2019-07-25)
-----------------------

Features
^^^^^^^^


* **config.formulas:** use the same PR branch for next batch of PRs
* **tofs:** add specific TOFS doc for ``nginx-formula``
* **tofs:** add specific TOFS files for ``systemd-formula``
* **tofs:** update from latest ``template-formula`` version

0.1.0-rc.1 (2019-07-21)
-----------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **pillars:** use in same way as ``state_top``
* **state_top:** include ``matcher`` as part of the config
* **systemd:** remove Jinja-based workaround to avoid ``centos-6``

Features
^^^^^^^^


* implement ``ssf`` to cover current 30+ ``semrel`` formulas
* **ci:** ignore ``opensuse-15`` comment for ``opensuse-42`` (globally)
* **ci:** ignore ``systemd`` comment for ``centos-6`` (globally)
* **cirrus+tofs:** remove files if respective booleans are ``False``
* **config.formulas:** use ``active`` for formulas & files to run for
* **format_matcher:** add macro to remove duplication for matchers
* **inspec:** manage ``inspec/*`` files using single templates for each
* **kitchen:** ensure consistent config collection under each suite
* **kitchen:** establish ``includes`` and ``excludes``
* **kitchen:** use ``*cludes`` fix for ``php`` & ``rkhunter``
* **sysstat:** add new formula after ``semrel`` PR merged
* **tofs:** manage TOFS files based upon value of ``use_tofs``
* **tofs:** add specific ``CONTRIBUTING`` for ``template-formula``
* **travis:** allow ``addons`` to be provided
* **travis:** use ``xenial`` for all Travis runs
* **travis:** allow ``dist`` to be configurable
* **travis+cirrus:** use ``bin/kitchen`` instead of via. ``bundle exec``
