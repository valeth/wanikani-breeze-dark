#!/bin/sh
docker run -it --rm -v "$PWD":/usr/src/app artemigos/scss_rake_guard bundler exec guard
