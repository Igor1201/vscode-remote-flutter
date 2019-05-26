#!/bin/bash

sudo chown -R cirrus:cirrus /home/cirrus/.gradle

SETUP_LOCK_FILE="/home/cirrus/sdks/flutter/.setup.lock"
if [ ! -e $SETUP_LOCK_FILE ]; then
    touch $SETUP_LOCK_FILE
    
    echo "-- First container startup --"
    flutter channel stable
    flutter upgrade
    echo "-- End first container startup --"
else
    echo "-- Not first container startup --"
fi
