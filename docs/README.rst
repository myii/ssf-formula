.. _readme:

ssf-formula
================

|img_travis| |img_sr|

.. |img_travis| image:: https://travis-ci.org/myii/ssf-formula.svg?branch=master
   :alt: Travis CI Build Status
   :scale: 100%
   :target: https://travis-ci.org/myii/ssf-formula
.. |img_sr| image:: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
   :alt: Semantic Release
   :scale: 100%
   :target: https://github.com/semantic-release/semantic-release

A SaltStack formula that is used to manage other SaltStack formulas,
particularly those that involve `semantic-release`, TOFS and `inspec`-based testing.

.. contents:: **Table of Contents**

General notes
-------------

See the full `SaltStack Formulas installation and usage instructions
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

If you are interested in writing or contributing to formulas, please pay attention to the `Writing Formula Section
<https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#writing-formulas>`_.

If you want to use this formula, please pay attention to the ``FORMULA`` file and/or ``git tag``,
which contains the currently released version. This formula is versioned according to `Semantic Versioning <http://semver.org/>`_.

See `Formula Versioning Section <https://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html#versioning>`_ for more details.

Contributing to this repo
-------------------------

**Commit message formatting is significant!!**

Please see :ref:`How to contribute <CONTRIBUTING>` for more details.

Available states
----------------

.. contents::
   :local:

``ssf``
^^^^^^^

*Meta-state (This is a state that includes other states)*.

This runs the ``ssf.config`` state.

``ssf.config``
^^^^^^^^^^^^^^

This state will work through the pillar/config-based activated formulas and files,
to prepare the changes that are necessary since the last sync.
The actual steps that are taken depend on the values set in the pillar/config.
These can result in making local changes only, or even pushing to GitHub and
creating the PR automatically.

Testing
-------

This is scheduled for an upcoming release.
