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

TODO
----

* Config templates
* Mapnik style templates