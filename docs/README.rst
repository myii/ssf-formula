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
particularly those that involve ``semantic-release``, TOFS and/or InSpec-based testing.

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

Using this repo
---------------

Due to the nature of the ``git`` operations used by this formula,
there are assumptions made about the local configuration:

#. Each repo has two remotes and tracking branches such as provided by the `git fork
   <https://github.com/tj/git-extras/blob/master/Commands.md#git-fork>`_
   command (available in the ``git-extras`` package).

#. A GitHub token is available, with the relevant permissions to create pull requests for each formula.

   a. This token needs to be provided in the custom script, as mentioned in the `pillar.example
      <https://github.com/myii/ssf-formula/blob/99b8c659aeacca1f5b3e60736fe496be1de97d76/pillar.example#L41-L44>`_
      file.
   #. The custom script is defined in the pillar/config.

However, pull requests (for each formula) should not be submitted until the changes are reviewed and merged here first.
When testing changes locally, use the pillar/config settings as `recommended
<https://github.com/myii/ssf-formula/blob/99b8c659aeacca1f5b3e60736fe496be1de97d76/pillar.example#L28-L31>`_.

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
