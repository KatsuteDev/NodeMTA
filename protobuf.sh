#!/bin/bash

PATH=$PATH:protobuf/bin

# https://github.com/OneBusAway/onebusaway-gtfs-realtime-api/tree/master/src/main/proto/com/google/transit/realtime

if [ ! -d protobuf ]; then
    echo "Missing protobuf directory, run install.sh first"
    exit 0
fi

echo "Compiling proto files for JavaScript, do not run this script more than once"

sed -i -E 's/(^import ")(.*)("; *$)/\1gtfs-realtime.proto\3/i;' protobuf/gtfs-realtime-crowding.proto
protobuf/bin/protoc -I=protobuf --js_out=import_style=commonjs_strict,binary:src/proto protobuf/gtfs-realtime-crowding.proto

sed -i -E 's/(^import ")(.*)("; *$)/\1gtfs-realtime.proto\3/i;' protobuf/gtfs-realtime-LIRR.proto
protobuf/bin/protoc -I=protobuf --js_out=import_style=commonjs_strict,binary:src/proto protobuf/gtfs-realtime-LIRR.proto

sed -i -E 's/(^import ")(.*)("; *$)/\1gtfs-realtime.proto\3/i;' protobuf/gtfs-realtime-MNR.proto
protobuf/bin/protoc -I=protobuf --js_out=import_style=commonjs_strict,binary:src/proto protobuf/gtfs-realtime-MNR.proto

sed -i -E 's/(^import ")(.*)("; *$)/\1gtfs-realtime.proto\3/i;' protobuf/gtfs-realtime-MTARR.proto
protobuf/bin/protoc -I=protobuf --js_out=import_style=commonjs_strict,binary:src/proto protobuf/gtfs-realtime-MTARR.proto

sed -i -E 's/(^import ")(.*)("; *$)/\1gtfs-realtime.proto\3/i;' protobuf/gtfs-realtime-NYCT.proto
protobuf/bin/protoc -I=protobuf --js_out=import_style=commonjs_strict,binary:src/proto protobuf/gtfs-realtime-NYCT.proto

sed -i -E 's/(^import ")(.*)("; *$)/\1gtfs-realtime.proto\3/i;' protobuf/gtfs-realtime-OneBusAway.proto
protobuf/bin/protoc -I=protobuf --js_out=import_style=commonjs_strict,binary:src/proto protobuf/gtfs-realtime-OneBusAway.proto

sed -i -E 's/(^import ")(.*)("; *$)/\1gtfs-realtime.proto\3/i;' protobuf/gtfs-realtime-service-status.proto
protobuf/bin/protoc -I=protobuf --js_out=import_style=commonjs_strict,binary:src/proto protobuf/gtfs-realtime-service-status.proto

protobuf/bin/protoc -I=protobuf --js_out=import_style=commonjs_strict,binary:src/proto protobuf/gtfs-realtime.proto

echo "Finished compiling and formatting proto files"