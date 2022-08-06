#!/bin/sh -e

here=$(readlink -f $(dirname $0))
cd $here/..

./bin/registry serve fio/server-config.yml
