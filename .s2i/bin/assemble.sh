#!/bin/sh
# Called during the image build life cycle.

CONFIG="/tmp/src/config"
pwd
ls
echo $CONFIG

if [ -d $CONFIG ]; then
    echo "Copying config files..."
    cp -rfv $CONFIG/* $AMQ_HOME/etc/
    echo "Done"
fi

