# InSpec Profile: `{{ suite.name }}`

This shows the implementation of the `{{ suite.name }}` InSpec [profile](https://github.com/inspec/inspec/blob/master/docs/profiles.md).
{%- if suite.name == 'share' %}

It's goal is to share the libraries between all profiles.

## Libraries

### `system`

The `system` library provides easy access to system dependent information:

- `system.platform`: based on `inspec.platform`, modify to values that are more consistent from a SaltStack perspective
  - `system.platform[:family]` provide a family name for Arch
  - `system.platform[:name]` modify `amazon` to `amazonlinux`
  - `system.platform[:release]` tweak Arch and Amazon Linux:
    - `Arch` is always `base-latest`
    - `Amazon Linux` release `2018` is resolved as `1`
  - `system.platform[:finger]` is the concatenation of the name and the major release number (except for Ubuntu, which gives `ubuntu-20.04` for example)
{%- else %}

## Verify a profile

InSpec ships with built-in features to verify a profile structure.

```bash
$ inspec check {{ suite.name }}
Summary
-------
Location: {{ suite.name }}
Profile: profile
Controls: 4
Timestamp: 2019-06-24T23:09:01+00:00
Valid: true

Errors
------

Warnings
--------
```

## Execute a profile

To run all **supported** controls on a local machine use `inspec exec /path/to/profile`.

```bash
$ inspec exec {{ suite.name }}
..

Finished in 0.0025 seconds (files took 0.12449 seconds to load)
8 examples, 0 failures
```

## Execute a specific control from a profile

To run one control from the profile use `inspec exec /path/to/profile --controls name`.

```bash
$ inspec exec {{ suite.name }} --controls package
.

Finished in 0.0025 seconds (files took 0.12449 seconds to load)
1 examples, 0 failures
```

See an [example control here](https://github.com/inspec/inspec/blob/master/examples/profile/controls/example.rb).
{%- endif %}
