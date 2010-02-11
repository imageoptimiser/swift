#!/bin/bash
# This script runs a leecher at some server;
# env variables are set in env.default.sh
HASH=66b9644bb01eaad09269354df00172c8a924773b

sleep 1 
ulimit -c 1024000
cd swift || exit 1
rm -f core
rm -f chunk
#valgrind --leak-check=yes \
./exec/leecher $HASH chunk $SEEDER:$SEEDPORT 0.0.0.0:$RUNPORT 2>lerr | gzip > lout.gz || exit 2
