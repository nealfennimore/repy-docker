#! /usr/bin/env bash

docker run -it --rm \
    -v "$PWD/src:/root/src" \
    ghcr.io/nealfennimore/repy \
    python repy.py restrictions.default encasementlib.r2py \
    "$@"