#!/bin/bash

PATH=protobuf/bin

# https://github.com/OneBusAway/onebusaway-gtfs-realtime-api/tree/master/src/main/proto/com/google/transit/realtime

if [ ! -d protobuf ]; then
    echo "Missing protobuf directory, run install.sh first"
    exit 0
fi

echo "Compiling proto files for JavaScript, do not run this script more than once"