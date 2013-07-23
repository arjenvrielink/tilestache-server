#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASEDIR=${DIR%/*}

echo $BASEDIR

#$BASEDIR"/bin/gunicorn" -b 0.0.0.0:9000 "TileStache:WSGITileServer('$BASEDIR/conf/tilestache/objecten.cfg')" 
gunicorn -b 0.0.0.0:9000 "TileStache:WSGITileServer('$BASEDIR/conf/objecten.cfg')" 
