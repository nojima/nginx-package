nginx-package
=============

[![Build Status](https://travis-ci.org/nojima/nginx-package.svg?branch=master)](https://travis-ci.org/nojima/nginx-package)

`nginx-package` is a nginx packaging script for me.
This script creates nginx deb package containing nginx binary and its sysvinit script.

How to use
----------

1. Install build dependencies by `sudo make build-dep`. (only works on Ubuntu)

2. Run `make`.
   If everything works fine, `nginx-nojima_<version>-<revision>_amd64.deb` will be generated.

You can specify nginx version and deb revision by `versions.json`.
