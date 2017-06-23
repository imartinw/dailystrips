#!/bin/bash

DSTDIR="/var/www/daily.martinwiesemann.de/data/"
USERAGENT='Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'
BASEDIR=$(dirname $0)

# download pictures
$BASEDIR/dailystrips --basedir $DSTDIR --local --dailydir --quiet --defs $BASEDIR/strips.def --useragent "$USERAGENT" --archive @martin

# delete old pictures
dailystrips-clean -q -a -d $DSTDIR 30

# end of file
