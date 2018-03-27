#!/bin/bash

USERAGENT='Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36'
BASEDIR=$(dirname $0)
DSTDIR="$BASEDIR/../data/"
LOGDIR="/var/log/dailystrips"

# download pictures
$BASEDIR/dailystrips --basedir $DSTDIR --local --dailydir --quiet --defs $BASEDIR/strips.def --useragent "$USERAGENT" --archive @martin 2> $LOGDIR/dailystrips.err > $LOGDIR/dailystrips.log

# delete old pictures
$BASEDIR/dailystrips-clean -q -a -d $DSTDIR 30

# end of file
