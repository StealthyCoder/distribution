#!/bin/sh -e

here=$(readlink -f $(dirname $0))
cd $here/..

docker buildx bake -f ./docker-bake.hcl binary
