Django on Vagrant
=================
This helps you get started building a Django envrionment inside Vagrant.
Cloning this repository, and typing ``vagrant up`` will give you a working
Django 1.3 project that you can use.


The Shortcut
------------
If all you want is a working Django envrionment and don't care about the process
building a new box, you copy the ``Vagrantfile.django`` into a new directory and
rename it to ``Vagrantfile``, then copy the empty ``project`` directory along
side it, and type::

    vagrant up

That will download the pre-built box and start it up.  From there, you can SSH
into the box with ``vagrant ssh``.


The Long Path
-------------
Alternately, you can use the plain ``Vagrantfile`` in this repository to build
a Django virtual machine based on Ubuntu 11.04, 32-bit.  To do that, clone this
repository, then run::

    vagrant up

This requires downloading and installing several third-party tools, including
``python-dev``, ``pip``, and ``git-core``.  It does not need to download Django
as it is already included in the ``packages/`` directory.

You can add additional packages that you would like to install into that
directory and modify Puppet manifest file (``manifests/django.pp``) to suit
your needs.


License
-------
Copyright 2011 Domain51, LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
