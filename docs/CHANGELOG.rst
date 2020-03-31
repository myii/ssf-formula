
Changelog
=========

`1.99.0 <https://github.com/myii/ssf-formula/compare/v1.98.0...v1.99.0>`_ (2020-03-31)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **zabbix:** adjust matrix to add ``3000`` & remove ``2017.7`` (\ `16f5cc7 <https://github.com/myii/ssf-formula/commit/16f5cc77b4cbf93e698cdae07fbdecc769e620e5>`_\ )

`1.98.0 <https://github.com/myii/ssf-formula/compare/v1.97.0...v1.98.0>`_ (2020-03-30)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **kitchen:** reinstall ``udev`` since removed from pre-salted images (\ `344fef2 <https://github.com/myii/ssf-formula/commit/344fef2b4f3c2d31f30e8b321d370e7ff921d8dd>`_\ )

`1.97.0 <https://github.com/myii/ssf-formula/compare/v1.96.0...v1.97.0>`_ (2020-03-30)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **logrotate:** fix Kitchen to ensure ``cron`` installed on ``Debian`` (\ `1f6a9b5 <https://github.com/myii/ssf-formula/commit/1f6a9b5961a2ef6fabadca5306474aa4ad64fa90>`_\ )

`1.96.0 <https://github.com/myii/ssf-formula/compare/v1.95.0...v1.96.0>`_ (2020-03-29)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **libsaltcli.jinja:** manage file for ``libvirt`` & ``template`` formulas (\ `2da697e <https://github.com/myii/ssf-formula/commit/2da697ef09054c177477cc57ba81dbf637b65324>`_\ )

`1.95.0 <https://github.com/myii/ssf-formula/compare/v1.94.0...v1.95.0>`_ (2020-03-26)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``consul-formula`` (\ `408776c <https://github.com/myii/ssf-formula/commit/408776c21f104bc22f4aaac2768ebcd78b4c5c6e>`_\ )

`1.94.0 <https://github.com/myii/ssf-formula/compare/v1.93.0...v1.94.0>`_ (2020-03-24)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **template:** adjust matrix to add ``3000`` & remove ``2017.7`` (\ `40f748b <https://github.com/myii/ssf-formula/commit/40f748b844cbfa08c8b5ed6832ea2f657e3da5a1>`_\ )

`1.93.0 <https://github.com/myii/ssf-formula/compare/v1.92.0...v1.93.0>`_ (2020-03-24)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **platforms:** prepare node anchors for new platforms and matrix (\ `42a2990 <https://github.com/myii/ssf-formula/commit/42a2990dd070a1ea169cdc5b6e5520f3f2145f4d>`_\ )
* **timezone:** use ``platforms_new`` & ``platforms_matrix_new`` (\ `866ffb7 <https://github.com/myii/ssf-formula/commit/866ffb7f935968a5489f86bf3baf0de8c6e10704>`_\ )

`1.92.0 <https://github.com/myii/ssf-formula/compare/v1.91.0...v1.92.0>`_ (2020-03-21)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **salt:** adjust matrix to add ``3000`` & remove ``2017.7`` (\ `8129158 <https://github.com/myii/ssf-formula/commit/8129158bc5486f8fead631e30bfd345bd5efb4f9>`_\ )

`1.91.0 <https://github.com/myii/ssf-formula/compare/v1.90.0...v1.91.0>`_ (2020-03-12)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **zabbix:** adjust Travis matrix after updating test version numbers (\ `a681508 <https://github.com/myii/ssf-formula/commit/a681508ce082ba9d0e441f71fe26e5f8d5374475>`_\ )

`1.90.0 <https://github.com/myii/ssf-formula/compare/v1.89.0...v1.90.0>`_ (2020-03-12)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **telegraf:** adjust to new working matrix after ``pytoml`` changes (\ `a4812b3 <https://github.com/myii/ssf-formula/commit/a4812b33ea95c5ec523ee266b09a8b907f2e59f1>`_\ )

`1.89.0 <https://github.com/myii/ssf-formula/compare/v1.88.0...v1.89.0>`_ (2020-02-14)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **gitignore:** standardise from the ``template-formula`` (\ `100906b <https://github.com/myii/ssf-formula/commit/100906bf7316c1370ab002cce6b16ae11f2bdc2c>`_\ ), closes `#130 <https://github.com/myii/ssf-formula/issues/130>`_

`1.88.0 <https://github.com/myii/ssf-formula/compare/v1.87.0...v1.88.0>`_ (2020-02-14)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **libtofs:** fix typo (\ `634365e <https://github.com/myii/ssf-formula/commit/634365ee5ffb5810b473d7386e20d0f13ceda865>`_\ )

Features
^^^^^^^^


* **libtofs:** “files_switch” mess up the variable exported by “map.jinja” (\ `c56ed35 <https://github.com/myii/ssf-formula/commit/c56ed3571cc2361f0d7207d81eec94264bbe2349>`_\ )

`1.87.0 <https://github.com/myii/ssf-formula/compare/v1.86.0...v1.87.0>`_ (2020-02-14)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **gitignore:** track TOFS override files (\ ``salt`` & ``template``\ ) (\ `0ef6415 <https://github.com/myii/ssf-formula/commit/0ef64153626c1017dc70b79a70f7dc933c84fa3b>`_\ )

`1.86.0 <https://github.com/myii/ssf-formula/compare/v1.85.0...v1.86.0>`_ (2020-02-14)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **rubocop:** move ``LineLength`` cop from ``Metrics`` to ``Layout`` (\ `f6b21ad <https://github.com/myii/ssf-formula/commit/f6b21ad1a4e34d804ca32a554233d05c4b7720dc>`_\ )

`1.85.0 <https://github.com/myii/ssf-formula/compare/v1.84.0...v1.85.0>`_ (2020-02-13)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **salt:** fix ``amazonlinux-2-py3`` (kitchen+travis+inspec) (\ `e5353af <https://github.com/myii/ssf-formula/commit/e5353afd572953b27c2e163c917a4dc75f3510e3>`_\ )

`1.84.0 <https://github.com/myii/ssf-formula/compare/v1.83.0...v1.84.0>`_ (2020-02-12)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* workaround issues with newly introduced ``amazonlinux-1`` (\ `387bde5 <https://github.com/myii/ssf-formula/commit/387bde5c3780c59ef4f546f17e2b265c117a05b6>`_\ )

`1.83.0 <https://github.com/myii/ssf-formula/compare/v1.82.0...v1.83.0>`_ (2020-02-11)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **gemfile:** remove ``rspec-retry`` gem in formulas where unused (\ `32b74a2 <https://github.com/myii/ssf-formula/commit/32b74a2653c3da728df224a076bf34f5614d1865>`_\ )

`1.82.0 <https://github.com/myii/ssf-formula/compare/v1.81.0...v1.82.0>`_ (2020-02-07)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **gemfile:** update for formulas with Vagrant testing (\ `21fdf1f <https://github.com/myii/ssf-formula/commit/21fdf1f2070949efdc26bc88031380ecac9b8b5a>`_\ )

`1.81.0 <https://github.com/myii/ssf-formula/compare/v1.80.0...v1.81.0>`_ (2020-02-05)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **amazonlinux:** update for ``1`` & ``2`` and remove temporary ``develop`` (\ `ce5e13a <https://github.com/myii/ssf-formula/commit/ce5e13a6636b90bc0a983d2790e08fe35b44dd15>`_\ )
* **kitchen:** avoid using bootstrap for ``master`` instances (\ `16de460 <https://github.com/myii/ssf-formula/commit/16de460014f0413e18d41f25cc7f12a2aaf824b2>`_\ ), closes `/github.com/saltstack/salt-bootstrap/pull/1424#issuecomment-581997903 <https://github.com//github.com/saltstack/salt-bootstrap/pull/1424/issues/issuecomment-581997903>`_

`1.80.0 <https://github.com/myii/ssf-formula/compare/v1.79.0...v1.80.0>`_ (2020-02-04)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **template:** update to use ``TEMPLATE`` for reusability (\ `d5c68e5 <https://github.com/myii/ssf-formula/commit/d5c68e53c4d05bcef044b4614385a5aa3f968db0>`_\ )

`1.79.0 <https://github.com/myii/ssf-formula/compare/v1.78.0...v1.79.0>`_ (2020-01-20)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``hostsfile-formula`` (\ `c33c1ea <https://github.com/myii/ssf-formula/commit/c33c1ea96db6c0b395f80c25bf78da5dcf0a2449>`_\ )

`1.78.0 <https://github.com/myii/ssf-formula/compare/v1.77.0...v1.78.0>`_ (2020-01-20)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **mattermost:** adjust Travis matrix to use ``systemd`` platforms only (\ `adaef37 <https://github.com/myii/ssf-formula/commit/adaef37d0550dc1f3383ea16c56cf4a614dd7753>`_\ )

`1.77.0 <https://github.com/myii/ssf-formula/compare/v1.76.0...v1.77.0>`_ (2020-01-20)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``packages-formula`` (\ `66fc6cb <https://github.com/myii/ssf-formula/commit/66fc6cb5883cfe37c095508f313bb250729a9992>`_\ )

`1.76.0 <https://github.com/myii/ssf-formula/compare/v1.75.0...v1.76.0>`_ (2020-01-16)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``mattermost-formula`` (\ `710a27f <https://github.com/myii/ssf-formula/commit/710a27fb0671db5ae1eef8613c23250c8a317a5d>`_\ ), closes `/freenode.logbot.info/saltstack-formulas/20200108#c3052081-c3052088 <https://github.com//freenode.logbot.info/saltstack-formulas/20200108/issues/c3052081-c3052088>`_

`1.75.0 <https://github.com/myii/ssf-formula/compare/v1.74.0...v1.75.0>`_ (2020-01-15)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **fail2ban:** promote ``ng`` (\ `4b10d9c <https://github.com/myii/ssf-formula/commit/4b10d9cd2d61101ff2537eb145a478f00f9010e8>`_\ )

`1.74.0 <https://github.com/myii/ssf-formula/compare/v1.73.0...v1.74.0>`_ (2020-01-11)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **fail2ban:** use ``fail2ban.ng`` in Kitchen (\ `5a5df71 <https://github.com/myii/ssf-formula/commit/5a5df71e17a8cf502a4d8db54928fcd3bce91618>`_\ ), closes `/github.com/saltstack-formulas/fail2ban-formula/issues/35#issuecomment-573162677 <https://github.com//github.com/saltstack-formulas/fail2ban-formula/issues/35/issues/issuecomment-573162677>`_

`1.73.0 <https://github.com/myii/ssf-formula/compare/v1.72.0...v1.73.0>`_ (2020-01-07)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **libvirt:** update Travis matrix after recent platform fixes (\ `631074d <https://github.com/myii/ssf-formula/commit/631074d424741e621989c0840990ddeb47248542>`_\ )

`1.72.0 <https://github.com/myii/ssf-formula/compare/v1.71.0...v1.72.0>`_ (2019-12-23)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **rabbitmq:** manage env file (\ `c7eb80b <https://github.com/myii/ssf-formula/commit/c7eb80bd677b3a9a82cae8c7b00ec657b59ca9fc>`_\ )

`1.71.0 <https://github.com/myii/ssf-formula/compare/v1.70.0...v1.71.0>`_ (2019-12-23)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **rabbitmq:** add new ``config_files`` state to suites (\ `ac490a7 <https://github.com/myii/ssf-formula/commit/ac490a75dea921cfde992bec37a8c4a1cfae834f>`_\ )

`1.70.0 <https://github.com/myii/ssf-formula/compare/v1.69.0...v1.70.0>`_ (2019-12-23)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **template:** improve reusability (\ `491791c <https://github.com/myii/ssf-formula/commit/491791cbe8702a5f8b81b848ada8905cd0e9a440>`_\ )

`1.69.0 <https://github.com/myii/ssf-formula/compare/v1.68.0...v1.69.0>`_ (2019-12-22)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **travis:** use ``major.minor`` for ``semantic-release`` version (\ `0f2c9d2 <https://github.com/myii/ssf-formula/commit/0f2c9d25edd2a613daf32d2175a3720273e4fb44>`_\ ), closes `/github.com/saltstack-formulas/bind-formula/issues/143#issuecomment-568197176 <https://github.com//github.com/saltstack-formulas/bind-formula/issues/143/issues/issuecomment-568197176>`_ `/travis-ci.com/saltstack-formulas/bind-formula/jobs/269513751#L266-L267 <https://github.com//travis-ci.com/saltstack-formulas/bind-formula/jobs/269513751/issues/L266-L267>`_

`1.68.0 <https://github.com/myii/ssf-formula/compare/v1.67.0...v1.68.0>`_ (2019-12-18)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **apt:** add ``unattended`` suite (\ `d579722 <https://github.com/myii/ssf-formula/commit/d5797229ab4d176fb0950e908ec347a4b2a02565>`_\ )

`1.67.0 <https://github.com/myii/ssf-formula/compare/v1.66.0...v1.67.0>`_ (2019-12-16)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **gemfile:** restrict ``train`` gem version until upstream fix (\ `26dc8a3 <https://github.com/myii/ssf-formula/commit/26dc8a3222b4d660a62677e8c9171682c0943fea>`_\ ), closes `/github.com/inspec/train/pull/544#issuecomment-566055052 <https://github.com//github.com/inspec/train/pull/544/issues/issuecomment-566055052>`_

`1.66.0 <https://github.com/myii/ssf-formula/compare/v1.65.2...v1.66.0>`_ (2019-12-12)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``icinga2-formula`` (\ `f055e2f <https://github.com/myii/ssf-formula/commit/f055e2fa28e8c12e81eeee446cb8ba38682e5059>`_\ )

`1.65.2 <https://github.com/myii/ssf-formula/compare/v1.65.1...v1.65.2>`_ (2019-12-08)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **kitchen:** use ``namespace`` for ``prev_comment`` in ``for`` loop (\ `3ea50d3 <https://github.com/myii/ssf-formula/commit/3ea50d3292e6b1a4d7ffb7fcb269dcade4702937>`_\ )

`1.65.1 <https://github.com/myii/ssf-formula/compare/v1.65.0...v1.65.1>`_ (2019-12-07)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **map.jinja:** fix error ``dictionary changed size during iteration`` (\ `a61a03a <https://github.com/myii/ssf-formula/commit/a61a03aaee58694cfcdd596108c797b8214cf0d0>`_\ ), closes `#69 <https://github.com/myii/ssf-formula/issues/69>`_

`1.65.0 <https://github.com/myii/ssf-formula/compare/v1.64.1...v1.65.0>`_ (2019-11-29)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``mongodb-formula`` (\ `1bec85b <https://github.com/myii/ssf-formula/commit/1bec85b85b6f6a5b148cbbb7e3458134ed66f5cb>`_\ )

`1.64.1 <https://github.com/myii/ssf-formula/compare/v1.64.0...v1.64.1>`_ (2019-11-27)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **travis:** quote pathspecs used with ``git ls-files`` (\ `be75d2d <https://github.com/myii/ssf-formula/commit/be75d2d4720faf7226a33b64c8dfb5927bba88ac>`_\ ), closes `/github.com/saltstack-formulas/template-formula/pull/181#discussion_r351491871 <https://github.com//github.com/saltstack-formulas/template-formula/pull/181/issues/discussion_r351491871>`_

`1.64.0 <https://github.com/myii/ssf-formula/compare/v1.63.0...v1.64.0>`_ (2019-11-27)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **fail2ban:** add notification about upcoming ``ng`` promotion (\ `8c91168 <https://github.com/myii/ssf-formula/commit/8c91168b1c091bd3c6f8d35b7c0074fc4833bc41>`_\ ), closes `/github.com/saltstack-formulas/fail2ban-formula/issues/34#issuecomment-539986988 <https://github.com//github.com/saltstack-formulas/fail2ban-formula/issues/34/issues/issuecomment-539986988>`_

`1.63.0 <https://github.com/myii/ssf-formula/compare/v1.62.0...v1.63.0>`_ (2019-11-27)
------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **travis:** use pathspecs for ``git ls-files`` instead of ``grep`` (\ `615e3b2 <https://github.com/myii/ssf-formula/commit/615e3b2e598d8e91bca5ba8d681778af61429c9e>`_\ ), closes `/github.com/saltstack-formulas/template-formula/pull/181#discussion_r351421463 <https://github.com//github.com/saltstack-formulas/template-formula/pull/181/issues/discussion_r351421463>`_

Features
^^^^^^^^


* **shellcheck:** apply fixes throughout this repo (\ `1ea7fbb <https://github.com/myii/ssf-formula/commit/1ea7fbb21ca889d124f2c5b210999e2a13588117>`_\ )
* **travis:** run ``shellcheck`` during lint job (\ `f52eb37 <https://github.com/myii/ssf-formula/commit/f52eb378987ac0cacaf3a079ca03067107173661>`_\ ), closes `/github.com/saltstack-formulas/template-formula/pull/180#issuecomment-558612422 <https://github.com//github.com/saltstack-formulas/template-formula/pull/180/issues/issuecomment-558612422>`_

`1.62.0 <https://github.com/myii/ssf-formula/compare/v1.61.0...v1.62.0>`_ (2019-11-27)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **django:** use default matrix after ``centos-6`` image fix (\ `bafdf12 <https://github.com/myii/ssf-formula/commit/bafdf1270c58dc1511767d18bdba2388d00fc08f>`_\ )

`1.61.0 <https://github.com/myii/ssf-formula/compare/v1.60.0...v1.61.0>`_ (2019-11-25)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``django-formula`` (\ `6da7f7a <https://github.com/myii/ssf-formula/commit/6da7f7a36300603e40250d6fa473674e3ab8824a>`_\ )

`1.60.0 <https://github.com/myii/ssf-formula/compare/v1.59.0...v1.60.0>`_ (2019-11-25)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``varnish-formula`` (\ `2be173a <https://github.com/myii/ssf-formula/commit/2be173a9a919377fd7d968bfb29ac8727c781f1c>`_\ )

`1.59.0 <https://github.com/myii/ssf-formula/compare/v1.58.0...v1.59.0>`_ (2019-11-20)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``nfs-formula`` (\ `1bb87db <https://github.com/myii/ssf-formula/commit/1bb87db767b55fb3cd89948257d8bd0387a86ef0>`_\ )

`1.58.0 <https://github.com/myii/ssf-formula/compare/v1.57.0...v1.58.0>`_ (2019-11-20)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **travis:** opt-in to ``dpl v2`` to complete build config validation (\ `b0e36eb <https://github.com/myii/ssf-formula/commit/b0e36eb68fd1f7f43514973baca123418eb373b9>`_\ ), closes `/github.com/travis-ci/dpl/issues/1138#issuecomment-554988130 <https://github.com//github.com/travis-ci/dpl/issues/1138/issues/issuecomment-554988130>`_

`1.57.0 <https://github.com/myii/ssf-formula/compare/v1.56.1...v1.57.0>`_ (2019-11-19)
------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **travis:** opt-in to ``dpl v2`` to complete build config validation (\ `1af7a81 <https://github.com/myii/ssf-formula/commit/1af7a810fe8737445e8a5f06c6be2a1cafeac429>`_\ ), closes `/github.com/travis-ci/dpl/issues/1138#issuecomment-554988130 <https://github.com//github.com/travis-ci/dpl/issues/1138/issues/issuecomment-554988130>`_

Features
^^^^^^^^


* **rabbitmq:** add ``latest`` suite (\ `8df7a31 <https://github.com/myii/ssf-formula/commit/8df7a319587e8d31d75e6f08346a4e0c6ae7c531>`_\ ), closes `/github.com/saltstack-formulas/rabbitmq-formula/pull/53#issuecomment-553480289 <https://github.com//github.com/saltstack-formulas/rabbitmq-formula/pull/53/issues/issuecomment-553480289>`_

`1.56.1 <https://github.com/myii/ssf-formula/compare/v1.56.0...v1.56.1>`_ (2019-11-16)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **travis:** use deprecated ``skip_cleanup`` for the time being (\ `5a92bd2 <https://github.com/myii/ssf-formula/commit/5a92bd28c75ef4661c896dc0a7c3e66ed423593e>`_\ )

`1.56.0 <https://github.com/myii/ssf-formula/compare/v1.55.0...v1.56.0>`_ (2019-11-16)
------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **travis:** reinstate deprecated ``skip_cleanup`` (\ `81c27e9 <https://github.com/myii/ssf-formula/commit/81c27e9e06ec852459e326f576da2c51170af171>`_\ )

Features
^^^^^^^^


* **travis:** apply changes from build config validation (\ `1c26e6d <https://github.com/myii/ssf-formula/commit/1c26e6d50b402fea7762710421df89c6377b6b6d>`_\ )

`1.55.0 <https://github.com/myii/ssf-formula/compare/v1.54.0...v1.55.0>`_ (2019-11-13)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formulas.sls:** automate ``branch_pr`` name when not pushing via. PR (\ `dc05288 <https://github.com/myii/ssf-formula/commit/dc052884094d1f1fd8f2e9ec86f6f60894e57e48>`_\ )

`1.54.0 <https://github.com/myii/ssf-formula/compare/v1.53.0...v1.54.0>`_ (2019-11-13)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **travis:** use build config validation (beta) (\ `4a11f97 <https://github.com/myii/ssf-formula/commit/4a11f975bce549f89d0290e6a02ae062061e959f>`_\ )

`1.53.0 <https://github.com/myii/ssf-formula/compare/v1.52.0...v1.53.0>`_ (2019-11-09)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **contributing:** use an ordered list for the ``semrel`` formulas (\ `ef4ef19 <https://github.com/myii/ssf-formula/commit/ef4ef19e0d469a8d5b3bd21d3ba28c19abed68bd>`_\ )

`1.52.0 <https://github.com/myii/ssf-formula/compare/v1.51.0...v1.52.0>`_ (2019-11-09)
------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **travis:** use build config validation (beta) (\ `6357ad5 <https://github.com/myii/ssf-formula/commit/6357ad53d95fd27a4d5b9cc5a16fe21c2e417bea>`_\ )

Features
^^^^^^^^


* **formula:** add ``firewalld-formula`` (\ `b920030 <https://github.com/myii/ssf-formula/commit/b920030a8185752fcf3f289354cc333961a866dd>`_\ )

`1.51.0 <https://github.com/myii/ssf-formula/compare/v1.50.0...v1.51.0>`_ (2019-11-09)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **kitchen:** use ``stable`` for ``amazonlinux-1`` bootstrap (\ `3bd1091 <https://github.com/myii/ssf-formula/commit/3bd10918b6237bb04bd7c314ac469eaeb465ecb7>`_\ ), closes `/github.com/saltstack-formulas/vault-formula/pull/50#discussion_r344262345 <https://github.com//github.com/saltstack-formulas/vault-formula/pull/50/issues/discussion_r344262345>`_ `/github.com/saltstack-formulas/vault-formula/pull/50#discussion_r344290629 <https://github.com//github.com/saltstack-formulas/vault-formula/pull/50/issues/discussion_r344290629>`_

`1.50.0 <https://github.com/myii/ssf-formula/compare/v1.49.0...v1.50.0>`_ (2019-11-08)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **users:** add ``vimrc`` suite (\ `9851593 <https://github.com/myii/ssf-formula/commit/98515932034fcda6bb0057f502d2aff3066079ba>`_\ )
* **verifier:** use list to allow providing multiple test suites (\ `124148d <https://github.com/myii/ssf-formula/commit/124148dbfe28bed144446bad09a012d6fd8689b0>`_\ )

`1.49.0 <https://github.com/myii/ssf-formula/compare/v1.48.0...v1.49.0>`_ (2019-11-08)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **openvpn:** implement Windows testing using ``kitchen-vagrant`` (\ `d083ff2 <https://github.com/myii/ssf-formula/commit/d083ff2573be1ca993ed4873d6a928d2247d964e>`_\ )

`1.48.0 <https://github.com/myii/ssf-formula/compare/v1.47.0...v1.48.0>`_ (2019-11-07)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **kitchen:** use ``provision_command`` for ``amazonlinux-1`` images (\ `b7835f2 <https://github.com/myii/ssf-formula/commit/b7835f2717cb7abcd8a1391c974a4d404a41f02d>`_\ ), closes `/github.com/saltstack-formulas/vault-formula/pull/50#pullrequestreview-312037893 <https://github.com//github.com/saltstack-formulas/vault-formula/pull/50/issues/pullrequestreview-312037893>`_
* **vault:** use bootstrapped ``amazonlinux-1`` images (\ `df1b8d6 <https://github.com/myii/ssf-formula/commit/df1b8d646d8a51a5ef1696b7b8f60760de9a06de>`_\ ), closes `#92 <https://github.com/myii/ssf-formula/issues/92>`_

`1.47.0 <https://github.com/myii/ssf-formula/compare/v1.46.0...v1.47.0>`_ (2019-11-04)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``epel-formula`` (\ `2814ea0 <https://github.com/myii/ssf-formula/commit/2814ea09637ab86dacb4325a0378afbdd19380c6>`_\ )
* **kitchen:** use bootstrapped ``amazonlinux-1`` images (\ `b51be37 <https://github.com/myii/ssf-formula/commit/b51be37dd9cf38b7de698d89f5c17d48e08d6d4b>`_\ )

`1.46.0 <https://github.com/myii/ssf-formula/compare/v1.45.0...v1.46.0>`_ (2019-11-03)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **amazonlinux:** use ``develop`` image until ``master`` is ready (\ `f7fb78d <https://github.com/myii/ssf-formula/commit/f7fb78df73fe2058b15051a22f2800651e32a40d>`_\ )

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **travis:** improve ``salt-lint`` invocation [skip ci] (\ `29b8913 <https://github.com/myii/ssf-formula/commit/29b8913dd59789b61b2687756f7c3275bf908fb6>`_\ )

`1.45.0 <https://github.com/myii/ssf-formula/compare/v1.44.1...v1.45.0>`_ (2019-11-02)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **salt-lint:** improve ``salt-lint`` invocation (better performance) (\ `ecc81b0 <https://github.com/myii/ssf-formula/commit/ecc81b04a1ca458916f83e0a3eac386c308d7d18>`_\ ), closes `/github.com/warpnet/salt-lint/issues/72#issuecomment-548738115 <https://github.com//github.com/warpnet/salt-lint/issues/72/issues/issuecomment-548738115>`_

`1.44.1 <https://github.com/myii/ssf-formula/compare/v1.44.0...v1.44.1>`_ (2019-10-31)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **release.config.js:** use full commit hash in commit link (\ `0b6e505 <https://github.com/myii/ssf-formula/commit/0b6e5052a9c2b2048000b53de4d8f1f040c447ac>`_\ )

Code Refactoring
^^^^^^^^^^^^^^^^


* **ssf:** merge changes from default ``.travis.yml`` template (\ `d29e5cd <https://github.com/myii/ssf-formula/commit/d29e5cdb79fff7fd88066b2c7dd96bda843a0525>`_\ )

`1.44.0 <https://github.com/myii/ssf-formula/compare/v1.43.0...v1.44.0>`_ (2019-10-31)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **release.config.js:** use full commit hash in commit link (\ ` <https://github.com/myii/ssf-formula/commit/478ff37>`_\ )
* **ssf:** remove TOFS overrides for updating ``ssf/defaults.yaml`` (\ ` <https://github.com/myii/ssf-formula/commit/a1a02f4>`_\ )
* **travis:** merge ``npm install`` commands and use shortened form (\ ` <https://github.com/myii/ssf-formula/commit/56c4b84>`_\ )

`1.43.0 <https://github.com/myii/ssf-formula/compare/v1.42.0...v1.43.0>`_ (2019-10-31)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``rabbitmq-formula`` (\ ` <https://github.com/myii/ssf-formula/commit/81f6609>`_\ )

`1.42.0 <https://github.com/myii/ssf-formula/compare/v1.41.0...v1.42.0>`_ (2019-10-31)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``ntp-formula`` (\ ` <https://github.com/myii/ssf-formula/commit/dc1d015>`_\ )

`1.41.0 <https://github.com/myii/ssf-formula/compare/v1.40.0...v1.41.0>`_ (2019-10-31)
------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **formula:** update all references from ``develop`` => ``master`` (\ ` <https://github.com/myii/ssf-formula/commit/f1adcaf>`_\ )
* **kitchen:** update ``opensuse-leap`` references from ``15`` => ``15.1`` (\ ` <https://github.com/myii/ssf-formula/commit/e5ee8aa>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **amazon:** use ``py2`` until ``py3`` images can be prepared (revert later) (\ ` <https://github.com/myii/ssf-formula/commit/9b1be95>`_\ )

Features
^^^^^^^^


* **deepsea:** disable failing platform in matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/5c1a318>`_\ )
* **defaults:** upgrade platforms support after ``2019.2.2`` release (\ ` <https://github.com/myii/ssf-formula/commit/6221763>`_\ )
* **formulas:** upgrade platforms support after ``2019.2.2`` release (\ ` <https://github.com/myii/ssf-formula/commit/cad8888>`_\ )
* **iscsi:** disable failing platforms in matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/bb48374>`_\ )
* **letsencrypt:** adjust matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/b27c0ae>`_\ )
* **libvirt:** adjust matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/a054c08>`_\ )
* **locale:** adjust suites, platforms and matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/d73690a>`_\ )
* **lvm:** disable failing platforms in matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/96f61dc>`_\ )
* **salt:** adjust platforms and matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/13d1d4b>`_\ )
* **sysctl:** adjust matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/2862c17>`_\ )
* **systemd:** disable failing platform in matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/8e03ecb>`_\ )
* **timezone:** adjust matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/ad8cd88>`_\ )
* **ufw:** disable failing platforms in matrix for ``2019.2.2`` (\ ` <https://github.com/myii/ssf-formula/commit/6e495ef>`_\ )

Reverts
^^^^^^^


* **kitchen:** "use bootstrapped ``opensuse`` images until ``2019.2.2``\ " (\ ` <https://github.com/myii/ssf-formula/commit/5e88b44>`_\ )

Tests
^^^^^


* **salt-lint:** check ``.tst`` files across all formulas (\ ` <https://github.com/myii/ssf-formula/commit/88f3309>`_\ )

`1.40.0 <https://github.com/myii/ssf-formula/compare/v1.39.0...v1.40.0>`_ (2019-10-24)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``letsencrypt-formula`` (\ ` <https://github.com/myii/ssf-formula/commit/39bd576>`_\ )

`1.39.0 <https://github.com/myii/ssf-formula/compare/v1.38.0...v1.39.0>`_ (2019-10-24)
------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **travis:** update ``salt-lint`` config for ``v0.0.10`` [skip ci] (\ ` <https://github.com/myii/ssf-formula/commit/78e286c>`_\ )

Features
^^^^^^^^


* **kitchen:** use ``debian-10-master-py3`` instead of ``develop`` (\ ` <https://github.com/myii/ssf-formula/commit/6f00a7e>`_\ ), closes `/travis-ci.org/myii/template-formula/jobs/602164511#L447-L451 <https://github.com//travis-ci.org/myii/template-formula/jobs/602164511/issues/L447-L451>`_

`1.38.0 <https://github.com/myii/ssf-formula/compare/v1.37.0...v1.38.0>`_ (2019-10-23)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **saltcheck:** add support in ``.travis.yml`` templates (\ ` <https://github.com/myii/ssf-formula/commit/112b916>`_\ )

`1.37.0 <https://github.com/myii/ssf-formula/compare/v1.36.0...v1.37.0>`_ (2019-10-23)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **salt-lint:** update ``.salt-lint`` configs for ``v0.0.10`` (\ ` <https://github.com/myii/ssf-formula/commit/5f34e06>`_\ )

`1.36.0 <https://github.com/myii/ssf-formula/compare/v1.35.0...v1.36.0>`_ (2019-10-22)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``apache-formula`` (\ ` <https://github.com/myii/ssf-formula/commit/88f4f50>`_\ )

`1.35.0 <https://github.com/myii/ssf-formula/compare/v1.34.0...v1.35.0>`_ (2019-10-19)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **ufw:** remove ``PyYAML`` requirement for ``salt-lint`` in ``.travis.yml`` (\ ` <https://github.com/myii/ssf-formula/commit/6d3b391>`_\ )

`1.34.0 <https://github.com/myii/ssf-formula/compare/v1.33.1...v1.34.0>`_ (2019-10-17)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``docker-formula`` (\ ` <https://github.com/myii/ssf-formula/commit/918c0f6>`_\ )

`1.33.1 <https://github.com/myii/ssf-formula/compare/v1.33.0...v1.33.1>`_ (2019-10-17)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **git:** tighten up scripts to avoid inconsistencies (\ ` <https://github.com/myii/ssf-formula/commit/778c7bb>`_\ )

Code Refactoring
^^^^^^^^^^^^^^^^


* **git:** quote ``True`` and ``False`` where used as strings (\ ` <https://github.com/myii/ssf-formula/commit/ad115ec>`_\ )
* **git:** use boolean versions of ``PUSH_ACTIVE`` and ``PUSH_VIA_PR`` (\ ` <https://github.com/myii/ssf-formula/commit/817f0d3>`_\ )

`1.33.0 <https://github.com/myii/ssf-formula/compare/v1.32.0...v1.33.0>`_ (2019-10-15)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **strongswan:** upgrade pre-existing TOFS (\ ` <https://github.com/myii/ssf-formula/commit/b10572a>`_\ )

`1.32.0 <https://github.com/myii/ssf-formula/compare/v1.31.0...v1.32.0>`_ (2019-10-15)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``strongswan-formula`` (\ ` <https://github.com/myii/ssf-formula/commit/82248be>`_\ )

`1.31.0 <https://github.com/myii/ssf-formula/compare/v1.30.0...v1.31.0>`_ (2019-10-15)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **cron:** add ``arch-base-latest`` (\ ` <https://github.com/myii/ssf-formula/commit/47f7346>`_\ )

`1.30.0 <https://github.com/myii/ssf-formula/compare/v1.29.0...v1.30.0>`_ (2019-10-15)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **ssf:** add TOFS overrides to ensure ``quoted-strings`` rule fulfilled (\ ` <https://github.com/myii/ssf-formula/commit/a021f56>`_\ ), closes `#71 <https://github.com/myii/ssf-formula/issues/71>`_

`1.29.0 <https://github.com/myii/ssf-formula/compare/v1.28.0...v1.29.0>`_ (2019-10-14)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **salt:** merge ``rubocop`` linter into main ``lint`` job [skip ci] (\ ` <https://github.com/myii/ssf-formula/commit/7aeedb0>`_\ )

Features
^^^^^^^^


* **apt-cacher:** updated ``state_top`` from formula [skip ci] (\ ` <https://github.com/myii/ssf-formula/commit/06f8f34>`_\ ), closes `/github.com/saltstack-formulas/apt-cacher-formula/pull/19#issuecomment-537991315 <https://github.com//github.com/saltstack-formulas/apt-cacher-formula/pull/19/issues/issuecomment-537991315>`_

Styles
^^^^^^


* **yamllint:** apply rule ``quoted-strings`` throughout the formula (\ ` <https://github.com/myii/ssf-formula/commit/9e17692>`_\ )

`1.28.0 <https://github.com/myii/ssf-formula/compare/v1.27.0...v1.28.0>`_ (2019-10-14)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **libvirt:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/14c4be0>`_\ )

`1.27.0 <https://github.com/myii/ssf-formula/compare/v1.26.0...v1.27.0>`_ (2019-10-14)
------------------------------------------------------------------------------------------

Documentation
^^^^^^^^^^^^^


* **readme:** update link to ``CONTRIBUTING`` [skip ci] (\ ` <https://github.com/myii/ssf-formula/commit/0b3be25>`_\ )

Features
^^^^^^^^


* **contributing:** remove from all ``semrel_formulas`` (\ ` <https://github.com/myii/ssf-formula/commit/96f09d4>`_\ )
* **zabbix:** add TOFS override for ``.salt-lint`` [skip ci] (\ ` <https://github.com/myii/ssf-formula/commit/1e46502>`_\ )

`1.26.0 <https://github.com/myii/ssf-formula/compare/v1.25.1...v1.26.0>`_ (2019-10-13)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **template:** remove all references to the ``develop`` branch (\ ` <https://github.com/myii/ssf-formula/commit/4d578cc>`_\ )

`1.25.1 <https://github.com/myii/ssf-formula/compare/v1.25.0...v1.25.1>`_ (2019-10-13)
------------------------------------------------------------------------------------------

Performance Improvements
^^^^^^^^^^^^^^^^^^^^^^^^


* **map.jinja:** reduce re-looping required for removing inactive files (\ ` <https://github.com/myii/ssf-formula/commit/194e793>`_\ )
* **map.jinja:** remove ``recurse`` merging strategy for ``config.get`` (\ ` <https://github.com/myii/ssf-formula/commit/190a357>`_\ )
* **map.jinja:** remove inactive files from formulas dict before merging (\ ` <https://github.com/myii/ssf-formula/commit/7fb97fe>`_\ )
* **map.jinja:** remove inactive formulas from each dict before merging (\ ` <https://github.com/myii/ssf-formula/commit/d462a93>`_\ )

`1.25.0 <https://github.com/myii/ssf-formula/compare/v1.24.0...v1.25.0>`_ (2019-10-13)
------------------------------------------------------------------------------------------

Documentation
^^^^^^^^^^^^^


* **contributing:** update link to ``iscsi-formula`` [skip ci] (\ ` <https://github.com/myii/ssf-formula/commit/ef98daf>`_\ )

Features
^^^^^^^^


* **zabbix:** upgrade pre-existing TOFS (\ ` <https://github.com/myii/ssf-formula/commit/803ffdf>`_\ )

`1.24.0 <https://github.com/myii/ssf-formula/compare/v1.23.0...v1.24.0>`_ (2019-10-12)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``iscsi-formula`` (\ ` <https://github.com/myii/ssf-formula/commit/7aca225>`_\ )

`1.23.0 <https://github.com/myii/ssf-formula/compare/v1.22.0...v1.23.0>`_ (2019-10-12)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **zabbix:** use ``fedora-29`` instead of ``fedora-30`` (for reliability) (\ ` <https://github.com/myii/ssf-formula/commit/5aaf188>`_\ ), closes `/github.com/saltstack-formulas/zabbix-formula/pull/130#issuecomment-541303953 <https://github.com//github.com/saltstack-formulas/zabbix-formula/pull/130/issues/issuecomment-541303953>`_

`1.22.0 <https://github.com/myii/ssf-formula/compare/v1.21.0...v1.22.0>`_ (2019-10-12)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``zabbix-formula`` (\ ` <https://github.com/myii/ssf-formula/commit/6e0bfae>`_\ )

`1.21.0 <https://github.com/myii/ssf-formula/compare/v1.20.0...v1.21.0>`_ (2019-10-12)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **apt-cacher:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/a799f8b>`_\ )
* **chrony:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/b9bceb4>`_\ )
* **collectd:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/9ba1a3f>`_\ )
* **cron:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/187ccf4>`_\ )
* **deepsea:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/5f6af1e>`_\ )
* **exim:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/3094eff>`_\ )
* **fail2ban:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/9348835>`_\ )
* **influxdb:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/1226b01>`_\ )
* **keepalived:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/7ab18a1>`_\ )
* **locale:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/74ab8f8>`_\ )
* **logrotate:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/0207488>`_\ )
* **lvm:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/5ea9558>`_\ )
* **mysql:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/923acd6>`_\ )
* **postfix:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/f38ef8d>`_\ )
* **redis:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/2346b38>`_\ )
* **salt:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/482cfce>`_\ )
* **stunnel:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/731776e>`_\ )
* **sudoers:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/7f0c48d>`_\ )
* **sysctl:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/d6bffd0>`_\ )
* **systemd:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/ad03ed9>`_\ )
* **telegraf:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/4e491e7>`_\ )
* **timezone:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/44c8c7f>`_\ )
* **users:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/6e4cb64>`_\ )
* **vim:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/717eac4>`_\ )
* **vsftpd:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/5c9fe9a>`_\ )

`1.20.0 <https://github.com/myii/ssf-formula/compare/v1.19.1...v1.20.0>`_ (2019-10-11)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **postgres:** merge ``rubocop`` linter into main ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/cf05242>`_\ )

`1.19.1 <https://github.com/myii/ssf-formula/compare/v1.19.0...v1.19.1>`_ (2019-10-10)
------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **issues:** remove all templates and references thereto (\ ` <https://github.com/myii/ssf-formula/commit/8bc7342>`_\ )

`1.19.0 <https://github.com/myii/ssf-formula/compare/v1.18.0...v1.19.0>`_ (2019-10-10)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **issues:** remove templates for all ``semrel_formulas`` (\ ` <https://github.com/myii/ssf-formula/commit/487e962>`_\ )

`1.18.0 <https://github.com/myii/ssf-formula/compare/v1.17.1...v1.18.0>`_ (2019-10-10)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **bin/kitchen:** fix ``rubocop`` errors (\ ` <https://github.com/myii/ssf-formula/commit/58881a7>`_\ )
* **gemfile:** fix ``rubocop`` errors (\ ` <https://github.com/myii/ssf-formula/commit/e0ec88a>`_\ )
* **salt-lint:** fix errors (\ ` <https://github.com/myii/ssf-formula/commit/5890b8a>`_\ )

Code Refactoring
^^^^^^^^^^^^^^^^


* **defaults:** use node anchors for common ``line_length`` values (\ ` <https://github.com/myii/ssf-formula/commit/ac9b7a5>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* merge travis matrix, add ``salt-lint`` & ``rubocop`` to ``lint`` job (\ ` <https://github.com/myii/ssf-formula/commit/2dac9b0>`_\ )

Features
^^^^^^^^


* **rubocop:** add per-formula overrides (\ ` <https://github.com/myii/ssf-formula/commit/212edf0>`_\ )
* **rubocop:** include for this repo (\ ` <https://github.com/myii/ssf-formula/commit/f4fc3c1>`_\ )
* **salt-lint:** add per-formula overrides (via. TOFS) (\ ` <https://github.com/myii/ssf-formula/commit/9ec9b1e>`_\ )
* **salt-lint:** include for this repo (\ ` <https://github.com/myii/ssf-formula/commit/1d9636e>`_\ )
* **travis:** update for new structure of merging the ``lint`` stage (\ ` <https://github.com/myii/ssf-formula/commit/dbee3f7>`_\ )
* **travis:** use ``env`` and ``name`` for improved display in Travis (\ ` <https://github.com/myii/ssf-formula/commit/8d86eb4>`_\ ), closes `/github.com/saltstack-formulas/template-formula/pull/175#discussion_r332613933 <https://github.com//github.com/saltstack-formulas/template-formula/pull/175/issues/discussion_r332613933>`_
* **travis:** use conditional to provide one or two lint jobs (\ ` <https://github.com/myii/ssf-formula/commit/5c2f134>`_\ )
* **ufw:** add specific ``pip3`` customisations to ``.travis.yml`` (\ ` <https://github.com/myii/ssf-formula/commit/c3acbd1>`_\ )

`1.17.1 <https://github.com/myii/ssf-formula/compare/v1.17.0...v1.17.1>`_ (2019-10-08)
------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **yamllint:** use existing Jinja variables wherever possible (\ `90d9303 <https://github.com/myii/ssf-formula/commit/90d9303>`_\ )

`1.17.0 <https://github.com/myii/ssf-formula/compare/v1.16.0...v1.17.0>`_ (2019-10-07)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **formulas:** use remainder of path after ``formula/`` (\ `426e55c <https://github.com/myii/ssf-formula/commit/426e55c>`_\ )

Features
^^^^^^^^


* **apt-cacher:** implement TOFS (\ `e79a418 <https://github.com/myii/ssf-formula/commit/e79a418>`_\ )

`1.16.0 <https://github.com/myii/ssf-formula/compare/v1.15.0...v1.16.0>`_ (2019-10-07)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **yamllint:** add ``.kitchen/`` directory to paths to be ignored (\ `7038f15 <https://github.com/myii/ssf-formula/commit/7038f15>`_\ )
* **yamllint:** add explicit settings for ``octal-values`` (\ `929ce19 <https://github.com/myii/ssf-formula/commit/929ce19>`_\ )

`1.15.0 <https://github.com/myii/ssf-formula/compare/v1.14.0...v1.15.0>`_ (2019-10-07)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **issues:** update templates for all ``semrel_formulas`` (\ `4f73d94 <https://github.com/myii/ssf-formula/commit/4f73d94>`_\ )

`1.14.0 <https://github.com/myii/ssf-formula/compare/v1.13.0...v1.14.0>`_ (2019-10-05)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **exim:** implement TOFS (\ `a3c991e <https://github.com/myii/ssf-formula/commit/a3c991e>`_\ )

`1.13.0 <https://github.com/myii/ssf-formula/compare/v1.12.0...v1.13.0>`_ (2019-10-04)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``telegraf-formula`` (\ `8c8f7c1 <https://github.com/myii/ssf-formula/commit/8c8f7c1>`_\ )
* **telegraf:** update for formula's transfer to main org (\ `a570df2 <https://github.com/myii/ssf-formula/commit/a570df2>`_\ )

`1.12.0 <https://github.com/myii/ssf-formula/compare/v1.11.1...v1.12.0>`_ (2019-10-03)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **libvirt:** implement TOFS (\ `6d413b3 <https://github.com/myii/ssf-formula/commit/6d413b3>`_\ )

`1.11.1 <https://github.com/myii/ssf-formula/compare/v1.11.0...v1.11.1>`_ (2019-10-01)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **kitchen:** install required packages to bootstrapped ``opensuse`` (\ `3c436cb <https://github.com/myii/ssf-formula/commit/3c436cb>`_\ ), closes `#52 <https://github.com/myii/ssf-formula/issues/52>`_

`1.11.0 <https://github.com/myii/ssf-formula/compare/v1.10.0...v1.11.0>`_ (2019-10-01)
------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **kitchen:** use macros for each section under ``driver`` (\ `e386630 <https://github.com/myii/ssf-formula/commit/e386630>`_\ )

Features
^^^^^^^^


* **kitchen:** use bootstrapped ``opensuse`` images until ``2019.2.2`` (\ `25946b0 <https://github.com/myii/ssf-formula/commit/25946b0>`_\ ), closes `/github.com/netmanagers/salt-image-builder/blob/d6e57f6b22570530a627c89a94fed02754a3197d/scripts/prepare.sh#L99 <https://github.com//github.com/netmanagers/salt-image-builder/blob/d6e57f6b22570530a627c89a94fed02754a3197d/scripts/prepare.sh/issues/L99>`_

`1.10.0 <https://github.com/myii/ssf-formula/compare/v1.9.0...v1.10.0>`_ (2019-10-01)
-----------------------------------------------------------------------------------------

Features
^^^^^^^^


* **dhcpd:** add remaining InSpec platforms (\ `68c3d0f <https://github.com/myii/ssf-formula/commit/68c3d0f>`_\ )

`1.9.0 <https://github.com/myii/ssf-formula/compare/v1.8.0...v1.9.0>`_ (2019-10-01)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **platform:** add ``arch-base-latest`` (remaining, commented out) (\ `879e2c0 <https://github.com/myii/ssf-formula/commit/879e2c0>`_\ )

`1.8.0 <https://github.com/myii/ssf-formula/compare/v1.7.0...v1.8.0>`_ (2019-10-01)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **vault:** limit commented instances to empty suite (\ `eee355b <https://github.com/myii/ssf-formula/commit/eee355b>`_\ )
* **vault:** split suites across instances leaving one running all (\ `e7483a3 <https://github.com/myii/ssf-formula/commit/e7483a3>`_\ ), closes `/github.com/saltstack-formulas/vault-formula/pull/43#issuecomment-533936364 <https://github.com//github.com/saltstack-formulas/vault-formula/pull/43/issues/issuecomment-533936364>`_
* **vault:** use specific Gemfile to restrict ``inspec`` version (\ `a9b7ff9 <https://github.com/myii/ssf-formula/commit/a9b7ff9>`_\ )
* **vault): ci(travis:** apply suggestions from code review (\ `54ea2fb <https://github.com/myii/ssf-formula/commit/54ea2fb>`_\ )

`1.7.0 <https://github.com/myii/ssf-formula/compare/v1.6.0...v1.7.0>`_ (2019-10-01)
---------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **formulas:** use ``alt_semrel_formula`` if set for ``formula/`` path (\ `0732312 <https://github.com/myii/ssf-formula/commit/0732312>`_\ )

Features
^^^^^^^^


* **syslog-ng:** implement TOFS (\ `119239c <https://github.com/myii/ssf-formula/commit/119239c>`_\ )

`1.6.0 <https://github.com/myii/ssf-formula/compare/v1.5.0...v1.6.0>`_ (2019-09-30)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **syslog-ng:** update formula to latest standards (\ `74f372d <https://github.com/myii/ssf-formula/commit/74f372d>`_\ )

`1.5.0 <https://github.com/myii/ssf-formula/compare/v1.4.1...v1.5.0>`_ (2019-09-30)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **issues:** manage templates for all ``semrel_formulas`` (\ `65cd3a9 <https://github.com/myii/ssf-formula/commit/65cd3a9>`_\ )

`1.4.1 <https://github.com/myii/ssf-formula/compare/v1.4.0...v1.4.1>`_ (2019-09-27)
---------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **\ ``old_ci_files``\ :** remove throughout since no longer used (\ `8c7ec00 <https://github.com/myii/ssf-formula/commit/8c7ec00>`_\ )

`1.4.0 <https://github.com/myii/ssf-formula/compare/v1.3.0...v1.4.0>`_ (2019-09-27)
---------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **libcimatrix:** convert any underscores to hyphens for suite names (\ `585ca2b <https://github.com/myii/ssf-formula/commit/585ca2b>`_\ )

Features
^^^^^^^^


* allow explicit specification of empty suites (i.e. ``name: ''``\ ) (\ `220eb4a <https://github.com/myii/ssf-formula/commit/220eb4a>`_\ )
* allow limiting commented instances when mimicking ``kitchen list`` (\ `e093ea3 <https://github.com/myii/ssf-formula/commit/e093ea3>`_\ )

Styles
^^^^^^


* **inspec_suite:** increase column width for 15-character suite names (\ `813dc93 <https://github.com/myii/ssf-formula/commit/813dc93>`_\ )

`1.3.0 <https://github.com/myii/ssf-formula/compare/v1.2.0...v1.3.0>`_ (2019-09-25)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``lvm-formula`` (\ `c6fc6cc <https://github.com/myii/ssf-formula/commit/c6fc6cc>`_\ )

`1.2.0 <https://github.com/myii/ssf-formula/compare/v1.1.0...v1.2.0>`_ (2019-09-25)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``stunnel-formula`` (\ `ea785a5 <https://github.com/myii/ssf-formula/commit/ea785a5>`_\ )

`1.1.0 <https://github.com/myii/ssf-formula/compare/v1.0.0...v1.1.0>`_ (2019-09-24)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **platform:** add ``arch-base-latest`` (\ `a041b9c <https://github.com/myii/ssf-formula/commit/a041b9c>`_\ ), closes `/freenode.logbot.info/saltstack-formulas/20190922#c2679402 <https://github.com//freenode.logbot.info/saltstack-formulas/20190922/issues/c2679402>`_

`1.0.0 <https://github.com/myii/ssf-formula/compare/v0.31.0...v1.0.0>`_ (2019-09-23)
----------------------------------------------------------------------------------------

Features
^^^^^^^^


* allow pushing directly to upstream remote (\ `03d5a3b <https://github.com/myii/ssf-formula/commit/03d5a3b>`_\ )
* **kitchen:** change ``log_level`` to ``debug`` instead of ``info`` (\ `be06bd8 <https://github.com/myii/ssf-formula/commit/be06bd8>`_\ )

BREAKING CHANGES
^^^^^^^^^^^^^^^^


* Multiple arguments have been added to the ``commit_push``
  shell script.  This includes logically reordering the arguments.
* The pillar structure has been modified according to the
  changes made.

`0.31.0 <https://github.com/myii/ssf-formula/compare/v0.30.0...v0.31.0>`_ (2019-09-21)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **openvpn:** fix EPEL repo configuration for ``Amazon Linux-2`` (\ `0702630 <https://github.com/myii/ssf-formula/commit/0702630>`_\ )

`0.30.0 <https://github.com/myii/ssf-formula/compare/v0.29.0...v0.30.0>`_ (2019-09-21)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **salt:** add remaining sections (Kitchen, InSpec & Travis) (\ `11186e9 <https://github.com/myii/ssf-formula/commit/11186e9>`_\ )

`0.29.0 <https://github.com/myii/ssf-formula/compare/v0.28.0...v0.29.0>`_ (2019-09-20)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``apt-cacher-formula`` (\ `d8f2aad <https://github.com/myii/ssf-formula/commit/d8f2aad>`_\ )

`0.28.0 <https://github.com/myii/ssf-formula/compare/v0.27.0...v0.28.0>`_ (2019-09-19)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``exim-formula`` (\ `55f58f9 <https://github.com/myii/ssf-formula/commit/55f58f9>`_\ )

`0.27.0 <https://github.com/myii/ssf-formula/compare/v0.26.0...v0.27.0>`_ (2019-09-19)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **vault:** use ``kitchen verify`` instead of ``kitchen test`` (\ `6908095 <https://github.com/myii/ssf-formula/commit/6908095>`_\ ), closes `/github.com/saltstack-formulas/vault-formula/pull/35#issuecomment-510046931 <https://github.com//github.com/saltstack-formulas/vault-formula/pull/35/issues/issuecomment-510046931>`_ `/freenode.logbot.info/saltstack-formulas/20190711#c2390145 <https://github.com//freenode.logbot.info/saltstack-formulas/20190711/issues/c2390145>`_

`0.26.0 <https://github.com/myii/ssf-formula/compare/v0.25.0...v0.26.0>`_ (2019-09-17)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``salt-formula`` (\ `49475cb <https://github.com/myii/ssf-formula/commit/49475cb>`_\ )

`0.25.0 <https://github.com/myii/ssf-formula/compare/v0.24.0...v0.25.0>`_ (2019-09-16)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **openssh:** use ``openssh.config`` as ``state_top`` (\ `e88c28d <https://github.com/myii/ssf-formula/commit/e88c28d>`_\ )

`0.24.0 <https://github.com/myii/ssf-formula/compare/v0.23.0...v0.24.0>`_ (2019-09-14)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``redis-formula`` (\ `e5eefbf <https://github.com/myii/ssf-formula/commit/e5eefbf>`_\ )

`0.23.0 <https://github.com/myii/ssf-formula/compare/v0.22.0...v0.23.0>`_ (2019-09-13)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **php:** implement TOFS (\ `7aab674 <https://github.com/myii/ssf-formula/commit/7aab674>`_\ )

`0.22.0 <https://github.com/myii/ssf-formula/compare/v0.21.0...v0.22.0>`_ (2019-09-13)
------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **yamllint:** add rule ``empty-values`` & use new ``yaml-files`` setting (\ `1d418e9 <https://github.com/myii/ssf-formula/commit/1d418e9>`_\ )

Features
^^^^^^^^


* **formula:** add ``openssh-formula`` (\ `cc13b86 <https://github.com/myii/ssf-formula/commit/cc13b86>`_\ )

`0.21.0 <https://github.com/myii/ssf-formula/compare/v0.20.0...v0.21.0>`_ (2019-09-12)
------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **yamllint:** restructure ``ignores`` like ``yaml-files`` (\ `534b0eb <https://github.com/myii/ssf-formula/commit/534b0eb>`_\ )

Features
^^^^^^^^


* **bind:** add ``yamllint`` ignore rules for ``pillar-with-views.example`` (\ `5d3bbf1 <https://github.com/myii/ssf-formula/commit/5d3bbf1>`_\ ), closes `/github.com/myii/ssf-formula/pull/27#issuecomment-529735409 <https://github.com//github.com/myii/ssf-formula/pull/27/issues/issuecomment-529735409>`_
* **yamllint:** add rule ``empty-values`` (\ `e25c1ef <https://github.com/myii/ssf-formula/commit/e25c1ef>`_\ )
* **yamllint:** use new ``yaml-files`` setting (\ `ea3fbf3 <https://github.com/myii/ssf-formula/commit/ea3fbf3>`_\ )

`0.20.0 <https://github.com/myii/ssf-formula/compare/v0.19.0...v0.20.0>`_ (2019-09-09)
------------------------------------------------------------------------------------------

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* **travis:** use ``dist: bionic`` (\ `9fe22c3 <https://github.com/myii/ssf-formula/commit/9fe22c3>`_\ )

Features
^^^^^^^^


* **openvpn:** use standard test pillar path (\ `05c5f93 <https://github.com/myii/ssf-formula/commit/05c5f93>`_\ ), closes `#27 <https://github.com/myii/ssf-formula/issues/27>`_

`0.19.0 <https://github.com/myii/ssf-formula/compare/v0.18.1...v0.19.0>`_ (2019-09-09)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **kitchen:** use workaround to prevent ``opensuse-leap-15`` SCP failures (\ `f39bf10 <https://github.com/myii/ssf-formula/commit/f39bf10>`_\ )
* **travis:** use ``dist: bionic`` (\ `310caff <https://github.com/myii/ssf-formula/commit/310caff>`_\ )

`0.18.1 <https://github.com/myii/ssf-formula/compare/v0.18.0...v0.18.1>`_ (2019-09-08)
------------------------------------------------------------------------------------------

Bug Fixes
^^^^^^^^^


* **libvirt:** add missed custom inspec ``README`` template (\ `7378aab <https://github.com/myii/ssf-formula/commit/7378aab>`_\ ), closes `#24 <https://github.com/myii/ssf-formula/issues/24>`_

`0.18.0 <https://github.com/myii/ssf-formula/compare/v0.17.0...v0.18.0>`_ (2019-09-07)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **inspec.yml:** add ``depends`` handling (\ `a10e09d <https://github.com/myii/ssf-formula/commit/a10e09d>`_\ )
* **kitchen.yml:** prevent suite inclusion if ``includes: *includes_NONE`` (\ `326f531 <https://github.com/myii/ssf-formula/commit/326f531>`_\ )
* **libvirt:** incorporate upstream changes (\ `dc1fe75 <https://github.com/myii/ssf-formula/commit/dc1fe75>`_\ )

`0.17.0 <https://github.com/myii/ssf-formula/compare/v0.16.0...v0.17.0>`_ (2019-09-07)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **ufw:** replace EOL pre-salted images (\ `9909840 <https://github.com/myii/ssf-formula/commit/9909840>`_\ ), closes `#16 <https://github.com/myii/ssf-formula/issues/16>`_

`0.16.0 <https://github.com/myii/ssf-formula/compare/v0.15.0...v0.16.0>`_ (2019-09-06)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``vim-formula`` (\ `851ed1f <https://github.com/myii/ssf-formula/commit/851ed1f>`_\ )

`0.15.0 <https://github.com/myii/ssf-formula/compare/v0.14.0...v0.15.0>`_ (2019-09-05)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formulas:** replace EOL pre-salted images (\ `23f3b80 <https://github.com/myii/ssf-formula/commit/23f3b80>`_\ )

`0.14.0 <https://github.com/myii/ssf-formula/compare/v0.13.0...v0.14.0>`_ (2019-09-05)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **php:** use separate suite for ``ubuntu`` (yamllint) (\ `1daf3d9 <https://github.com/myii/ssf-formula/commit/1daf3d9>`_\ )

`0.13.0 <https://github.com/myii/ssf-formula/compare/v0.12.0...v0.13.0>`_ (2019-08-29)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **libvirt:** add openSUSE to supported platform (\ `513188a <https://github.com/myii/ssf-formula/commit/513188a>`_\ ), closes `/github.com/saltstack-formulas/libvirt-formula/pull/53#discussion_r318455954 <https://github.com//github.com/saltstack-formulas/libvirt-formula/pull/53/issues/discussion_r318455954>`_

`0.12.0 <https://github.com/myii/ssf-formula/compare/v0.11.0...v0.12.0>`_ (2019-08-28)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``vsftpd-formula`` (\ `11c7ad8 <https://github.com/myii/ssf-formula/commit/11c7ad8>`_\ )

`0.11.0 <https://github.com/myii/ssf-formula/compare/v0.10.0...v0.11.0>`_ (2019-08-28)
------------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``cron-formula`` (\ `b1f434e <https://github.com/myii/ssf-formula/commit/b1f434e>`_\ )

`0.10.0 <https://github.com/myii/ssf-formula/compare/v0.9.0...v0.10.0>`_ (2019-08-28)
-----------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``sysctl-formula`` (\ `e0f6eff <https://github.com/myii/ssf-formula/commit/e0f6eff>`_\ )

`0.9.0 <https://github.com/myii/ssf-formula/compare/v0.8.0...v0.9.0>`_ (2019-08-27)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``timezone-formula`` (\ `47007f5 <https://github.com/myii/ssf-formula/commit/47007f5>`_\ )

`0.8.0 <https://github.com/myii/ssf-formula/compare/v0.7.0...v0.8.0>`_ (2019-08-25)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``influxdb-formula`` (\ `3b31495 <https://github.com/myii/ssf-formula/commit/3b31495>`_\ )

`0.7.0 <https://github.com/myii/ssf-formula/compare/v0.6.0...v0.7.0>`_ (2019-08-18)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **bind:** re-enable ``fedora`` (\ `9b2c99d <https://github.com/myii/ssf-formula/commit/9b2c99d>`_\ )

`0.6.0 <https://github.com/myii/ssf-formula/compare/v0.5.0...v0.6.0>`_ (2019-08-17)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **tofs:** update from latest ``template-formula`` version (\ `1ef5f6b <https://github.com/myii/ssf-formula/commit/1ef5f6b>`_\ )

`0.5.0 <https://github.com/myii/ssf-formula/compare/v0.4.1...v0.5.0>`_ (2019-08-17)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **yamllint:** configure for all ``semrel_formulas`` (\ `bfad41d <https://github.com/myii/ssf-formula/commit/bfad41d>`_\ )

`0.4.1 <https://github.com/myii/ssf-formula/compare/v0.4.0...v0.4.1>`_ (2019-08-05)
---------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **yamllint:** lint ``.yamllint`` as well; improve comments (\ `ac968c6 <https://github.com/myii/ssf-formula/commit/ac968c6>`_\ )

`0.4.0 <https://github.com/myii/ssf-formula/compare/v0.3.1...v0.4.0>`_ (2019-08-04)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **travis:** add ``yamllint`` check to ``commitlint`` stage (\ `8d154bb <https://github.com/myii/ssf-formula/commit/8d154bb>`_\ )
* **yamllint:** include for this repo and apply rules throughout (\ `191dc69 <https://github.com/myii/ssf-formula/commit/191dc69>`_\ )

`0.3.1 <https://github.com/myii/ssf-formula/compare/v0.3.0...v0.3.1>`_ (2019-08-04)
---------------------------------------------------------------------------------------

Documentation
^^^^^^^^^^^^^


* **template:** update ``users-formula`` PR link (\ `f235324 <https://github.com/myii/ssf-formula/commit/f235324>`_\ )

`0.3.0 <https://github.com/myii/ssf-formula/compare/v0.2.1...v0.3.0>`_ (2019-08-04)
---------------------------------------------------------------------------------------

Features
^^^^^^^^


* **formula:** add ``users-formula`` (\ `2502485 <https://github.com/myii/ssf-formula/commit/2502485>`_\ )

`0.2.1 <https://github.com/myii/ssf-formula/compare/v0.2.0...v0.2.1>`_ (2019-08-04)
---------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* **state_top:** remove unnecessary entries (provided by ``defaults``\ ) (\ `5f229f2 <https://github.com/myii/ssf-formula/commit/5f229f2>`_\ )

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
