# Changelog

# [1.2.0](https://github.com/myii/ssf-formula/compare/v1.1.0...v1.2.0) (2019-09-25)


### Features

* **formula:** add `stunnel-formula` ([ea785a5](https://github.com/myii/ssf-formula/commit/ea785a5))

# [1.1.0](https://github.com/myii/ssf-formula/compare/v1.0.0...v1.1.0) (2019-09-24)


### Features

* **platform:** add `arch-base-latest` ([a041b9c](https://github.com/myii/ssf-formula/commit/a041b9c)), closes [/freenode.logbot.info/saltstack-formulas/20190922#c2679402](https://github.com//freenode.logbot.info/saltstack-formulas/20190922/issues/c2679402)

# [1.0.0](https://github.com/myii/ssf-formula/compare/v0.31.0...v1.0.0) (2019-09-23)


### Features

* allow pushing directly to upstream remote ([03d5a3b](https://github.com/myii/ssf-formula/commit/03d5a3b))
* **kitchen:** change `log_level` to `debug` instead of `info` ([be06bd8](https://github.com/myii/ssf-formula/commit/be06bd8))


### BREAKING CHANGES

* Multiple arguments have been added to the `commit_push`
shell script.  This includes logically reordering the arguments.
* The pillar structure has been modified according to the
changes made.

# [0.31.0](https://github.com/myii/ssf-formula/compare/v0.30.0...v0.31.0) (2019-09-21)


### Features

* **openvpn:** fix EPEL repo configuration for `Amazon Linux-2` ([0702630](https://github.com/myii/ssf-formula/commit/0702630))

# [0.30.0](https://github.com/myii/ssf-formula/compare/v0.29.0...v0.30.0) (2019-09-21)


### Features

* **salt:** add remaining sections (Kitchen, InSpec & Travis) ([11186e9](https://github.com/myii/ssf-formula/commit/11186e9))

# [0.29.0](https://github.com/myii/ssf-formula/compare/v0.28.0...v0.29.0) (2019-09-20)


### Features

* **formula:** add `apt-cacher-formula` ([d8f2aad](https://github.com/myii/ssf-formula/commit/d8f2aad))

# [0.28.0](https://github.com/myii/ssf-formula/compare/v0.27.0...v0.28.0) (2019-09-19)


### Features

* **formula:** add `exim-formula` ([55f58f9](https://github.com/myii/ssf-formula/commit/55f58f9))

# [0.27.0](https://github.com/myii/ssf-formula/compare/v0.26.0...v0.27.0) (2019-09-19)


### Features

* **vault:** use `kitchen verify` instead of `kitchen test` ([6908095](https://github.com/myii/ssf-formula/commit/6908095)), closes [/github.com/saltstack-formulas/vault-formula/pull/35#issuecomment-510046931](https://github.com//github.com/saltstack-formulas/vault-formula/pull/35/issues/issuecomment-510046931) [/freenode.logbot.info/saltstack-formulas/20190711#c2390145](https://github.com//freenode.logbot.info/saltstack-formulas/20190711/issues/c2390145)

# [0.26.0](https://github.com/myii/ssf-formula/compare/v0.25.0...v0.26.0) (2019-09-17)


### Features

* **formula:** add `salt-formula` ([49475cb](https://github.com/myii/ssf-formula/commit/49475cb))

# [0.25.0](https://github.com/myii/ssf-formula/compare/v0.24.0...v0.25.0) (2019-09-16)


### Features

* **openssh:** use `openssh.config` as `state_top` ([e88c28d](https://github.com/myii/ssf-formula/commit/e88c28d))

# [0.24.0](https://github.com/myii/ssf-formula/compare/v0.23.0...v0.24.0) (2019-09-14)


### Features

* **formula:** add `redis-formula` ([e5eefbf](https://github.com/myii/ssf-formula/commit/e5eefbf))

# [0.23.0](https://github.com/myii/ssf-formula/compare/v0.22.0...v0.23.0) (2019-09-13)


### Features

* **php:** implement TOFS ([7aab674](https://github.com/myii/ssf-formula/commit/7aab674))

# [0.22.0](https://github.com/myii/ssf-formula/compare/v0.21.0...v0.22.0) (2019-09-13)


### Continuous Integration

* **yamllint:** add rule `empty-values` & use new `yaml-files` setting ([1d418e9](https://github.com/myii/ssf-formula/commit/1d418e9))


### Features

* **formula:** add `openssh-formula` ([cc13b86](https://github.com/myii/ssf-formula/commit/cc13b86))

# [0.21.0](https://github.com/myii/ssf-formula/compare/v0.20.0...v0.21.0) (2019-09-12)


### Code Refactoring

* **yamllint:** restructure `ignores` like `yaml-files` ([534b0eb](https://github.com/myii/ssf-formula/commit/534b0eb))


### Features

* **bind:** add `yamllint` ignore rules for `pillar-with-views.example` ([5d3bbf1](https://github.com/myii/ssf-formula/commit/5d3bbf1)), closes [/github.com/myii/ssf-formula/pull/27#issuecomment-529735409](https://github.com//github.com/myii/ssf-formula/pull/27/issues/issuecomment-529735409)
* **yamllint:** add rule `empty-values` ([e25c1ef](https://github.com/myii/ssf-formula/commit/e25c1ef))
* **yamllint:** use new `yaml-files` setting ([ea3fbf3](https://github.com/myii/ssf-formula/commit/ea3fbf3))

# [0.20.0](https://github.com/myii/ssf-formula/compare/v0.19.0...v0.20.0) (2019-09-09)


### Continuous Integration

* **travis:** use `dist: bionic` ([9fe22c3](https://github.com/myii/ssf-formula/commit/9fe22c3))


### Features

* **openvpn:** use standard test pillar path ([05c5f93](https://github.com/myii/ssf-formula/commit/05c5f93)), closes [#27](https://github.com/myii/ssf-formula/issues/27)

# [0.19.0](https://github.com/myii/ssf-formula/compare/v0.18.1...v0.19.0) (2019-09-09)


### Features

* **kitchen:** use workaround to prevent `opensuse-leap-15` SCP failures ([f39bf10](https://github.com/myii/ssf-formula/commit/f39bf10))
* **travis:** use `dist: bionic` ([310caff](https://github.com/myii/ssf-formula/commit/310caff))

## [0.18.1](https://github.com/myii/ssf-formula/compare/v0.18.0...v0.18.1) (2019-09-08)


### Bug Fixes

* **libvirt:** add missed custom inspec `README` template ([7378aab](https://github.com/myii/ssf-formula/commit/7378aab)), closes [#24](https://github.com/myii/ssf-formula/issues/24)

# [0.18.0](https://github.com/myii/ssf-formula/compare/v0.17.0...v0.18.0) (2019-09-07)


### Features

* **inspec.yml:** add `depends` handling ([a10e09d](https://github.com/myii/ssf-formula/commit/a10e09d))
* **kitchen.yml:** prevent suite inclusion if `includes: *includes_NONE` ([326f531](https://github.com/myii/ssf-formula/commit/326f531))
* **libvirt:** incorporate upstream changes ([dc1fe75](https://github.com/myii/ssf-formula/commit/dc1fe75))

# [0.17.0](https://github.com/myii/ssf-formula/compare/v0.16.0...v0.17.0) (2019-09-07)


### Features

* **ufw:** replace EOL pre-salted images ([9909840](https://github.com/myii/ssf-formula/commit/9909840)), closes [#16](https://github.com/myii/ssf-formula/issues/16)

# [0.16.0](https://github.com/myii/ssf-formula/compare/v0.15.0...v0.16.0) (2019-09-06)


### Features

* **formula:** add `vim-formula` ([851ed1f](https://github.com/myii/ssf-formula/commit/851ed1f))

# [0.15.0](https://github.com/myii/ssf-formula/compare/v0.14.0...v0.15.0) (2019-09-05)


### Features

* **formulas:** replace EOL pre-salted images ([23f3b80](https://github.com/myii/ssf-formula/commit/23f3b80))

# [0.14.0](https://github.com/myii/ssf-formula/compare/v0.13.0...v0.14.0) (2019-09-05)


### Features

* **php:** use separate suite for `ubuntu` (yamllint) ([1daf3d9](https://github.com/myii/ssf-formula/commit/1daf3d9))

# [0.13.0](https://github.com/myii/ssf-formula/compare/v0.12.0...v0.13.0) (2019-08-29)


### Features

* **libvirt:** add openSUSE to supported platform ([513188a](https://github.com/myii/ssf-formula/commit/513188a)), closes [/github.com/saltstack-formulas/libvirt-formula/pull/53#discussion_r318455954](https://github.com//github.com/saltstack-formulas/libvirt-formula/pull/53/issues/discussion_r318455954)

# [0.12.0](https://github.com/myii/ssf-formula/compare/v0.11.0...v0.12.0) (2019-08-28)


### Features

* **formula:** add `vsftpd-formula` ([11c7ad8](https://github.com/myii/ssf-formula/commit/11c7ad8))

# [0.11.0](https://github.com/myii/ssf-formula/compare/v0.10.0...v0.11.0) (2019-08-28)


### Features

* **formula:** add `cron-formula` ([b1f434e](https://github.com/myii/ssf-formula/commit/b1f434e))

# [0.10.0](https://github.com/myii/ssf-formula/compare/v0.9.0...v0.10.0) (2019-08-28)


### Features

* **formula:** add `sysctl-formula` ([e0f6eff](https://github.com/myii/ssf-formula/commit/e0f6eff))

# [0.9.0](https://github.com/myii/ssf-formula/compare/v0.8.0...v0.9.0) (2019-08-27)


### Features

* **formula:** add `timezone-formula` ([47007f5](https://github.com/myii/ssf-formula/commit/47007f5))

# [0.8.0](https://github.com/myii/ssf-formula/compare/v0.7.0...v0.8.0) (2019-08-25)


### Features

* **formula:** add `influxdb-formula` ([3b31495](https://github.com/myii/ssf-formula/commit/3b31495))

# [0.7.0](https://github.com/myii/ssf-formula/compare/v0.6.0...v0.7.0) (2019-08-18)


### Features

* **bind:** re-enable `fedora` ([9b2c99d](https://github.com/myii/ssf-formula/commit/9b2c99d))

# [0.6.0](https://github.com/myii/ssf-formula/compare/v0.5.0...v0.6.0) (2019-08-17)


### Features

* **tofs:** update from latest `template-formula` version ([1ef5f6b](https://github.com/myii/ssf-formula/commit/1ef5f6b))

# [0.5.0](https://github.com/myii/ssf-formula/compare/v0.4.1...v0.5.0) (2019-08-17)


### Features

* **yamllint:** configure for all `semrel_formulas` ([bfad41d](https://github.com/myii/ssf-formula/commit/bfad41d))

## [0.4.1](https://github.com/myii/ssf-formula/compare/v0.4.0...v0.4.1) (2019-08-05)


### Code Refactoring

* **yamllint:** lint `.yamllint` as well; improve comments ([ac968c6](https://github.com/myii/ssf-formula/commit/ac968c6))

# [0.4.0](https://github.com/myii/ssf-formula/compare/v0.3.1...v0.4.0) (2019-08-04)


### Features

* **travis:** add `yamllint` check to `commitlint` stage ([8d154bb](https://github.com/myii/ssf-formula/commit/8d154bb))
* **yamllint:** include for this repo and apply rules throughout ([191dc69](https://github.com/myii/ssf-formula/commit/191dc69))

## [0.3.1](https://github.com/myii/ssf-formula/compare/v0.3.0...v0.3.1) (2019-08-04)


### Documentation

* **template:** update `users-formula` PR link ([f235324](https://github.com/myii/ssf-formula/commit/f235324))

# [0.3.0](https://github.com/myii/ssf-formula/compare/v0.2.1...v0.3.0) (2019-08-04)


### Features

* **formula:** add `users-formula` ([2502485](https://github.com/myii/ssf-formula/commit/2502485))

## [0.2.1](https://github.com/myii/ssf-formula/compare/v0.2.0...v0.2.1) (2019-08-04)


### Code Refactoring

* **state_top:** remove unnecessary entries (provided by `defaults`) ([5f229f2](https://github.com/myii/ssf-formula/commit/5f229f2))

# [0.2.0](https://github.com/myii/ssf-formula/compare/v0.1.1...v0.2.0) (2019-08-03)


### Bug Fixes

* **defaults:** update commit message version in `semantic-release` run ([9382692](https://github.com/myii/ssf-formula/commit/9382692))


### Features

* **php:** update deprecation version number in `semantic-release` run ([8e2c546](https://github.com/myii/ssf-formula/commit/8e2c546)), closes [/github.com/saltstack-formulas/php-formula/pull/175#issuecomment-517492613](https://github.com//github.com/saltstack-formulas/php-formula/pull/175/issues/issuecomment-517492613) [/github.com/saltstack-formulas/php-formula/pull/185#issuecomment-517603898](https://github.com//github.com/saltstack-formulas/php-formula/pull/185/issues/issuecomment-517603898)

## [0.1.1](https://github.com/myii/ssf-formula/compare/v0.1.0...v0.1.1) (2019-08-03)


### Documentation

* **readme:** add initial `Using this repo` section ([ebfffcd](https://github.com/myii/ssf-formula/commit/ebfffcd))

# [0.1.0](https://github.com/myii/ssf-formula/compare/v0.1.0-rc.5...v0.1.0) (2019-08-03)


### Features

* **defaults:** update commit message version in `semantic-release` run ([f9b74e3](https://github.com/myii/ssf-formula/commit/f9b74e3))
* **formulas:** allow formula-level upstream branch via. pillar/config ([5320c2e](https://github.com/myii/ssf-formula/commit/5320c2e))

## 0.1.0-rc.5 (2019-08-02)


### Code Refactoring

* **config.formulas:** centralise the add/rm functionality


### Features
* **config.formulas:** use per-file override for `semrel_formula` name
* **kitchen:** use single unmatching `includes` rather than all `excludes`


## 0.1.0-rc.4 (2019-07-31)


### Documentation

* **readme:** add to this formula


### Features

* **formula:** add `dhcpd-formula`
* **libvirt:** update with latest upstream changes


### Styles

* **config.formulas:** improve comments, format and state names
* **config.formulas:** use YAML block scalar (folded+strip) for `args`


## 0.1.0-rc.3 (2019-07-30)


### Code Refactoring

* **formula:** use extend with node anchors for `semrel_files`
* **yaml:** use extend with node anchors wherever possible


### Features

* **config.formulas:** includes `files` within each `formula`
* **formula:** add `ssf-formula`
* **formula:** add `stack-formula`
* **tofs:** add updated `CONTRIBUTING` for `template-formula`
* **travis:** ensure formulas without `platforms` don't run tests


### Styles

* **platforms_matrix:** align `inspec_suite` as the last column


## 0.1.0-rc.2 (2019-07-25)


### Features

* **config.formulas:** use the same PR branch for next batch of PRs
* **tofs:** add specific TOFS doc for `nginx-formula`
* **tofs:** add specific TOFS files for `systemd-formula`
* **tofs:** update from latest `template-formula` version


## 0.1.0-rc.1 (2019-07-21)


### Code Refactoring

* **pillars:** use in same way as `state_top`
* **state_top:** include `matcher` as part of the config
* **systemd:** remove Jinja-based workaround to avoid `centos-6`


### Features

* implement `ssf` to cover current 30+ `semrel` formulas
* **ci:** ignore `opensuse-15` comment for `opensuse-42` (globally)
* **ci:** ignore `systemd` comment for `centos-6` (globally)
* **cirrus+tofs:** remove files if respective booleans are `False`
* **config.formulas:** use `active` for formulas & files to run for
* **format_matcher:** add macro to remove duplication for matchers
* **inspec:** manage `inspec/*` files using single templates for each
* **kitchen:** ensure consistent config collection under each suite
* **kitchen:** establish `includes` and `excludes`
* **kitchen:** use `*cludes` fix for `php` & `rkhunter`
* **sysstat:** add new formula after `semrel` PR merged
* **tofs:** manage TOFS files based upon value of `use_tofs`
* **tofs:** add specific `CONTRIBUTING` for `template-formula`
* **travis:** allow `addons` to be provided
* **travis:** use `xenial` for all Travis runs
* **travis:** allow `dist` to be configurable
* **travis+cirrus:** use `bin/kitchen` instead of via. `bundle exec`
