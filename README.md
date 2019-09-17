[![logo](https://raw.githubusercontent.com/metwork-framework/resources/master/logos/metwork-white-logo-small.png)](http://www.metwork-framework.org)
# mfextaddon_scientific

[//]: # (automatically generated from https://github.com/metwork-framework/resources/blob/master/cookiecutter/_%7B%7Bcookiecutter.repo%7D%7D/README.md)

**Status (master branch)**



[![Drone CI](http://metwork-framework.org:8000/api/badges/metwork-framework/mfextaddon_scientific/status.svg)](http://metwork-framework.org:8000/metwork-framework/mfextaddon_scientific)
[![Maintenance](https://github.com/metwork-framework/resources/blob/master/badges/maintained.svg)]()
[![Gitter](https://github.com/metwork-framework/resources/blob/master/badges/community-en.svg)](https://gitter.im/metwork-framework/community-en?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Gitter](https://github.com/metwork-framework/resources/blob/master/badges/community-fr.svg)](https://gitter.im/metwork-framework/community-fr?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)


[//]: # (TABLE_OF_CONTENTS_PLACEHOLDER)

## What is it?

This module is a [mfext](https://github.com/metwork-framework/mfext) add-on which
provides scientific tools and libraries for use in [MetWork Framework](http://metwork-framework.org) env.

## Provided layers

This add-on provides three layers:

- `scientific@mfext` (common files for next layers, mainly C/C++ libraries/tools)
- `python3_scientific@mfext` (scientific Python3 tools/libraries)
- `python2_scientitic@mfext` (scientific Python2 tools/libraries)

## Provides useful packages

So, to install this add-on, you have to install:

- `metwork-mfext-layer-scientific` package
- (and/or) `metwork-mfext-layer-python3_scientific` package
- (and/or) `metwork-mfext-layer-python2_scientific` package

## Quickstart

```console

$ ##### As root user #####

$ # We install the Python3 enabled version of scientific libraries/tools
$ yum -y install metwork-mfext-layer-python3_scientific


$ ##### As lambda user #####

$ # We load the mfext environment (if it is not already done)
$ . /opt/metwork-mfext/share/interactive_profile

$ # We check that the layer is installed and loaded
$ layers |grep scientific
- (*) scientific_core@mfext [/opt/metwork-mfext/opt/scientific_core]
- (*) scientific@mfext [/opt/metwork-mfext/opt/scientific]
- (*) python3_scientific@mfext [/opt/metwork-mfext/opt/python3_vim]
- (*) python2_scientific@mfext [/opt/metwork-mfext/opt/python2_vim]

$ # note: scientific_core@mfext layer is provided by mfext module itself
$ #       not by this addon

$ # Let's test
$ python
>>> import matplotlib
>>> import gdal
>>> import h5py
>>> import numpy
>>> import scipy
>>> import geos
>>> import pandas
>>> import eccodes
>>> import Magics
# [...] :-)
```









## Reference documentation

- (for **master (development)** version), see [this dedicated site](http://metwork-framework.org/pub/metwork/continuous_integration/docs/master/mfextaddon_scientific/) for reference documentation.
- (for **latest released stable** version), see [this dedicated site](http://metwork-framework.org/pub/metwork/releases/docs/stable/mfextaddon_scientific/) for reference documentation.

For very specific use cases, you might be interested in
[reference documentation for integration branch](http://metwork-framework.org/pub/metwork/continuous_integration/docs/integration/mfextaddon_scientific/).

And if you are looking for an old released version, you can search [here](http://metwork-framework.org/pub/metwork/releases/docs/).



## Installation guide

See [this document](.metwork-framework/install_a_metwork_package.md).


## Configuration guide

See [this document](.metwork-framework/configure_a_metwork_package.md).



## Contributing guide

See [CONTRIBUTING.md](CONTRIBUTING.md) file.



## Code of Conduct

See [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) file.



## Sponsors

*(If you are officially paid to work on MetWork Framework, please contact us to add your company logo here!)*

[![logo](https://raw.githubusercontent.com/metwork-framework/resources/master/sponsors/meteofrance-small.jpeg)](http://www.meteofrance.com)
