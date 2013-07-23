TileStache
==========

run a TileStache server on Debian or Ubuntu

Prepare environment
-------------------

.. code-block:: bash

    apt-get install python-software-properties
    add-apt-repository ppa:developmentseed/mapbox
    apt-get update
    apt-get install libmapnik2-dev
    apt-get install python-mapnik2
    easy_install pip
    pip install virtualenvwrapper

Install TileStache
------------------

.. code-block:: bash

   mkvirtualenv tilestache
   toggleglobalsitepackages
   pip install -r requirements.txt
   utils/start_gunicorn.sh

tilestache should be running on 0.0.0.0 on port 9000. TileStache config is stored in conf, mapnik XML styles are stored in conf/styles/

TODO
----

* Config templates
* Mapnik style templates
* Provisioning (ansible, puppet?)
