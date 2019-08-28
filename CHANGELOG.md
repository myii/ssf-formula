# Changelog

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
