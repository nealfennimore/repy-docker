#! /usr/bin/env bash

docker run -it --rm \
    -v "$PWD/src:/root/src" \
    repy:latest \
    python repy.py restrictions.default encasementlib.r2py \
    "$@"