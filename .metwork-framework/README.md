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
