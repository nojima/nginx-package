nginx-package
=============

[![Build Status](https://travis-ci.org/nojima/nginx-package.svg?branch=master)](https://travis-ci.org/nojima/nginx-package)

`nginx-package` is a nginx packaging script for me.
This script creates nginx deb package containing nginx binary and its sysvinit script.

How to use
----------

1. Install build dependencies by hand.

2. `cd` to this directory.

3. Get nginx source code:
   ```
   hg clone http://hg.nginx.org/nginx
   ```

4. Checkout any release you like.

4. Run `./build`.
   If everything works fine, `nginx-nojima_<version>-<revision>_amd64.deb` will be generated.
   You can change `<revision>` with `REVISION` environment variable (ex. `REVISION=42 ./build`).
