TileStache
==========

run a TileStache server on Debian or Ubuntu

Prepare environment
-------------------

.. code-block:: bash

    apt-get install python-software-properties
    add-apt-repository ppa:developmentseed/mapbox
    apt-get update
    apt-get install libmapnik
    apt-get install python-mapnik
    apt-get install python-setuptools
    easy_install pip
    pip install virtualenvwrapper
    export WORKON_HOME=~/.Envs
    mkdir -p $WORKON_HOME
    source /usr/local/bin/virtualenvwrapper.sh

You might have to remove libmapnik-dev and mapnik-utils first::

    apt-get remove libmapnik-dev mapnik-utils

You might want to add the virtualenvwrapper WORKON_HOME environment variable to your .bashrc

Install TileStache
------------------

.. code-block:: bash

   mkvirtualenv tilestache
   toggleglobalsitepackages
   pip install -r requirements.txt
   utils/start_gunicorn.sh

This assumes you have TileStache config file stored in conf/objecten.cfg. Ttilestache should be running on 0.0.0.0 on port 9000. TileStache config is stored in conf, mapnik XML styles are stored in conf/styles/

TODO
----

* Config templates
* Mapnik style templates
* Provisioning (ansible, puppet?)
