# Loading Source Code

By default, the image will link up any code located in the `/root/src` directory when the container starts.

The following should return no output:
```sh
docker run -it --rm \
    -v "$PWD/loading-source-code/src:/root/src" \
    ghcr.io/nealfennimore/repy \
    python repy.py restrictions.default encasementlib.r2py \
    test.r2py
```

The following should throw an exception:
```sh
docker run -it --rm \
    -v "$PWD/loading-source-code/src:/root/src" \
    ghcr.io/nealfennimore/repy \
    python repy.py restrictions.default encasementlib.r2py \
    error-test.r2py
```