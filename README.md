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







## Full list of components

| Name | Version | Layer |
| --- | --- | --- |
| [Cartopy](https://scitools.org.uk/cartopy) | 0.13.1 | python2_scientific |
| [Cartopy](http://scitools.org.uk/cartopy/docs/latest/) | 0.17.0 | python3_scientific |
| [Click](https://palletsprojects.com/p/click/) | 7.0 | python2_scientific |
| [Cython](http://cython.org/) | 0.29.12 | python2_scientific |
| [Cython](http://cython.org/) | 0.29.12 | python3_scientific |
| [Fiona](https://github.com/Toblerity/Fiona) | 1.8.6 | python2_scientific |
| [Fiona](https://github.com/Toblerity/Fiona) | 1.8.6 | python3_scientific |
| [Flask](https://palletsprojects.com/p/flask/) | 1.1.1 | python3_scientific |
| [GDAL](http://www.gdal.org) | 2.2.4 | python2_scientific |
| [GDAL](http://www.gdal.org) | 2.2.4 | python3_scientific |
| [ImageMagick6](http://www.imagemagick.org) | 6.9.9-51 | scientific |
| [Magics](https://github.com/ecmwf/magics-python) | 1.0.6 | python2_scientific |
| [Magics](https://github.com/ecmwf/magics-python) | 1.0.6 | python3_scientific |
| [Magics](https://www.ecmwf.int/en/computing/software) | 4.1.2 | scientific |
| [MetPy](http://github.com/Unidata/MetPy) | 0.10.2 | python2_scientific |
| [MetPy](http://github.com/Unidata/MetPy) | 0.10.2 | python3_scientific |
| [Pillow](http://python-pillow.org) | 6.1.0 | python2_scientific |
| [Pillow](http://python-pillow.org) | 6.1.0 | python3_scientific |
| [Pint](https://github.com/hgrecco/pint) | 0.9 | python2_scientific |
| [Pint](https://github.com/hgrecco/pint) | 0.9 | python3_scientific |
| [SQLAlchemy](http://www.sqlalchemy.org) | 1.3.5 | python2_scientific |
| [SQLAlchemy](http://www.sqlalchemy.org) | 1.3.5 | python3_scientific |
| [Shapely](https://github.com/Toblerity/Shapely) | 1.6.4.post2 | python2_scientific |
| [Shapely](https://github.com/Toblerity/Shapely) | 1.6.4.post2 | python3_scientific |
| [Werkzeug](https://palletsprojects.com/p/werkzeug/) | 0.15.4 | python3_scientific |
| [aggdraw](https://github.com/pytroll/aggdraw) | 1.3.11 | python2_scientific |
| [aggdraw](https://github.com/pytroll/aggdraw) | 1.3.11 | python3_scientific |
| [asciitree](http://github.com/mbr/asciitree) | 0.3.3 | python2_scientific |
| [asciitree](http://github.com/mbr/asciitree) | 0.3.3 | python3_scientific |
| [attrs](https://www.attrs.org/) | 19.1.0 | python2_scientific |
| [attrs](https://www.attrs.org/) | 19.1.0 | python3_scientific |
| [backports.tempfile](https://github.com/pjdelport/backports.tempfile) | 1.0 | python2_scientific |
| [backports.weakref](https://github.com/pjdelport/backports.weakref) | 1.0.post1 | python2_scientific |
| [boost](https://www.boost.org/) | 1_67_0 | scientific |
| [cdo](https://code.mpimet.mpg.de/projects/cdo/) | 1.8.2 | scientific |
| [cdsapi](https://software.ecmwf.int/stash/projects/CDS/repos/cdsapi) | 0.1.4 | python2_scientific |
| [cdsapi](https://software.ecmwf.int/stash/projects/CDS/repos/cdsapi) | 0.1.4 | python3_scientific |
| [certifi](https://certifi.io/) | 2019.3.9 | python2_scientific |
| [certifi](https://certifi.io/) | 2019.3.9 | python3_scientific |
| [cf-units](https://scitools.org.uk/cf-units) | 2.1.1 | python2_scientific |
| [cf-units](https://scitools.org.uk/cf-units) | 2.1.1 | python3_scientific |
| [cfgrib](https://github.com/ecmwf/cfgrib) | 0.9.7.1 | python3_scientific |
| [cftime](https://pypi.org/project/cftime) | 1.0.3.4 | python2_scientific |
| [cftime](https://pypi.org/project/cftime) | 1.0.3.4 | python3_scientific |
| [click-plugins](https://github.com/click-contrib/click-plugins) | 1.1.1 | python2_scientific |
| [click-plugins](https://github.com/click-contrib/click-plugins) | 1.1.1 | python3_scientific |
| [cligj](https://github.com/mapbox/cligj) | 0.5.0 | python2_scientific |
| [cligj](https://github.com/mapbox/cligj) | 0.5.0 | python3_scientific |
| [configobj](https://github.com/DiffSK/configobj) | 5.0.6 | python2_scientific |
| [configobj](https://github.com/DiffSK/configobj) | 5.0.6 | python3_scientific |
| [contextlib2](http://contextlib2.readthedocs.org) | 0.5.5 | python2_scientific |
| [cycler](http://github.com/matplotlib/cycler) | 0.10.0 | python2_scientific |
| [cycler](http://github.com/matplotlib/cycler) | 0.10.0 | python3_scientific |
| [dask](https://github.com/dask/dask/) | 1.2.2 | python2_scientific |
| [dask](https://github.com/dask/dask/) | 2.1.0 | python3_scientific |
| [decorator](https://github.com/micheles/decorator) | 4.4.0 | python2_scientific |
| [decorator](https://github.com/micheles/decorator) | 4.4.0 | python3_scientific |
| [eccodes-python](https://github.com/ecmwf/eccodes-python) | 0.9.2 | python3_scientific |
| [eccodes](https://www.ecmwf.int/en/computing/software) | 2.13.0 | python2_scientific |
| [eccodes](https://www.ecmwf.int/en/computing/software) | 2.13.0 | scientific |
| [ecmwf-api-client](https://github.com/ecmwf/ecmwf-api-client) | 1.5.4 | python2_scientific |
| [ecmwf-api-client](https://github.com/ecmwf/ecmwf-api-client) | 1.5.4 | python3_scientific |
| [enum34](https://bitbucket.org/stoneleaf/enum34) | 1.1.6 | python2_scientific |
| [esmf](http://www.earthsystemmodeling.org) | 7_1_0r | python2_scientific |
| [esmf](http://www.earthsystemmodeling.org) | 7_1_0r | python3_scientific |
| [esmf](http://www.earthsystemmodeling.org) | 7_1_0r | scientific |
| [fasteners](https://github.com/harlowja/fasteners) | 0.15 | python2_scientific |
| [fasteners](https://github.com/harlowja/fasteners) | 0.15 | python3_scientific |
| [fontconfig](https://www.freedesktop.org/wiki/Software/fontconfig/) | 2.13.92 | scientific |
| [freetype](https://www.freetype.org/) | 2.10.1 | scientific |
| [fribidi](ihttps://github.com/fribidi/fribidi/) | 1.0.5 | scientific |
| [funcsigs](http://funcsigs.readthedocs.org) | 1.0.2 | python2_scientific |
| [geos](https://github.com/grst/geos) | 0.2.2 | python3_scientific |
| [graphviz](https://github.com/xflr6/graphviz) | 0.11.1 | python2_scientific |
| [graphviz](https://github.com/xflr6/graphviz) | 0.11.1 | python3_scientific |
| [graphviz](https://graphviz.org) | 2.40.1 | scientific |
| [h5py](http://www.h5py.org) | 2.9.0 | python2_scientific |
| [h5py](http://www.h5py.org) | 2.9.0 | python3_scientific |
| [harfbuzz](https://www.freedesktop.org/wiki/Software/HarfBuzz/) | 2.6.1 | scientific |
| [ipython-genutils](http://ipython.org) | 0.2.0 | python2_scientific |
| [ipython-genutils](http://ipython.org) | 0.2.0 | python3_scientific |
| [iris](https://scitools.org.uk/iris) | 2.1.0 | python2_scientific |
| [iris](https://scitools.org.uk/iris) | 2.1.0 | python3_scientific |
| [itsdangerous](https://palletsprojects.com/p/itsdangerous/) | 1.1.0 | python3_scientific |
| [joblib](https://joblib.readthedocs.io) | 0.13.2 | python3_scientific |
| [kiwisolver](https://github.com/nucleic/kiwi) | 1.1.0 | python2_scientific |
| [kiwisolver](https://github.com/nucleic/kiwi) | 1.1.0 | python3_scientific |
| [lxml](http://lxml.de/) | 4.3.4 | python2_scientific |
| [lxml](http://lxml.de/) | 4.3.4 | python3_scientific |
| [matplotlib](http://matplotlib.org) | 2.2.2 | python2_scientific |
| [matplotlib](https://matplotlib.org) | 3.1.1 | python3_scientific |
| [monotonic](https://github.com/atdt/monotonic) | 1.5 | python2_scientific |
| [monotonic](https://github.com/atdt/monotonic) | 1.5 | python3_scientific |
| [munch](http://github.com/Infinidat/munch) | 2.3.2 | python2_scientific |
| [munch](http://github.com/Infinidat/munch) | 2.3.2 | python3_scientific |
| [nco](http://nco.sourceforge.net) | 4.8.1 | scientific |
| [netCDF4](http://github.com/Unidata/netcdf4-python) | 1.5.1.2 | python2_scientific |
| [netCDF4](http://github.com/Unidata/netcdf4-python) | 1.5.1.2 | python3_scientific |
| [netcdf-fortran](http://www.unidata.ucar.edu/software/netcdf/) | 4.4.5 | scientific |
| [numcodecs](https://github.com/alimanfoo/numcodecs) | 0.6.3 | python2_scientific |
| [numcodecs](https://github.com/alimanfoo/numcodecs) | 0.6.3 | python3_scientific |
| [numpy](https://www.numpy.org) | 1.16.4 | python2_scientific |
| [numpy](https://www.numpy.org) | 1.16.4 | python3_scientific |
| [palettable](https://jiffyclub.github.io/palettable/) | 3.2.0 | python2_scientific |
| [palettable](https://jiffyclub.github.io/palettable/) | 3.2.0 | python3_scientific |
| [pandas](http://pandas.pydata.org) | 0.24.2 | python2_scientific |
| [pandas](http://pandas.pydata.org) | 0.24.2 | python3_scientific |
| [pango](https://pango.gnome.org/) | 1.42.4 | scientific |
| [pathlib](https://pathlib.readthedocs.org/) | 1.0.1 | python2_scientific |
| [pngquant](https://github.com/Brightcells/pngquant) | 1.0.6 | python2_scientific |
| [pngquant](https://github.com/Brightcells/pngquant) | 1.0.6 | python3_scientific |
| [pngquant](http://www.pngquant.org/) | 2.12.0 | scientific |
| [pooch](https://github.com/fatiando/pooch) | 0.5.2 | python2_scientific |
| [pooch](https://github.com/fatiando/pooch) | 0.5.2 | python3_scientific |
| [pycoast](https://pypi.org/project/pycoast) | 1.2.3 | python2_scientific |
| [pycoast](https://pypi.org/project/pycoast) | 1.2.3 | python3_scientific |
| [pycurl](http://pycurl.io/) | 7.43.0.3 | python2_scientific |
| [pycurl](http://pycurl.io/) | 7.43.0.3 | python3_scientific |
| [pydecorate](https://github.com/pytroll/pydecorate) | 0.2.1 | python2_scientific |
| [pydecorate](https://github.com/pytroll/pydecorate) | 0.2.1 | python3_scientific |
| [pygraphviz](http://pygraphviz.github.io/) | 1.5 | python2_scientific |
| [pygraphviz](http://pygraphviz.github.io/) | 1.5 | python3_scientific |
| [pykdtree](https://pypi.org/project/pykdtree) | 1.3.1 | python2_scientific |
| [pykdtree](https://pypi.org/project/pykdtree) | 1.3.1 | python3_scientific |
| [pyke](https://sourceforge.net/projects/pyke/) | 1.1.1 | python2_scientific |
| [pyke](https://sourceforge.net/projects/pyke/) | 1.1.1 | python3_scientific |
| [pyorbital](https://github.com/pytroll/pyorbital) | 1.5.0 | python2_scientific |
| [pyorbital](https://github.com/pytroll/pyorbital) | 1.5.0 | python3_scientific |
| [pyproj](https://github.com/jswhit/pyproj) | 1.9.6 | python2_scientific |
| [pyproj](https://github.com/jswhit/pyproj) | 1.9.6 | python3_scientific |
| [pyresample](https://pypi.org/project/pyresample) | 1.13.2 | python2_scientific |
| [pyresample](https://pypi.org/project/pyresample) | 1.13.2 | python3_scientific |
| [pyshp](https://github.com/GeospatialPython/pyshp) | 2.1.0 | python2_scientific |
| [pyshp](https://github.com/GeospatialPython/pyshp) | 2.1.0 | python3_scientific |
| [python-dateutil](https://dateutil.readthedocs.io) | 2.8.0 | python2_scientific |
| [pytz](http://pythonhosted.org/pytz) | 2019.1 | python2_scientific |
| [satpy](https://github.com/pytroll/satpy) | 0.17.1 | python2_scientific |
| [satpy](https://github.com/pytroll/satpy) | 0.17.1 | python3_scientific |
| [scandir](https://github.com/benhoyt/scandir) | 1.10.0 | python2_scientific |
| [scikit-learn](http://scikit-learn.org) | 0.21.2 | python3_scientific |
| [scipy](https://www.scipy.org) | 1.1.0 | python2_scientific |
| [scipy](https://www.scipy.org) | 1.1.0 | python3_scientific |
| [seaborn](https://seaborn.pydata.org) | 0.9.0 | python2_scientific |
| [seaborn](https://seaborn.pydata.org) | 0.9.0 | python3_scientific |
| [subprocess32](https://github.com/google/python-subprocess32) | 3.5.4 | python2_scientific |
| [toolz](https://github.com/pytoolz/toolz/) | 0.10.0 | python2_scientific |
| [toolz](https://github.com/pytoolz/toolz/) | 0.10.0 | python3_scientific |
| [traitlets](http://ipython.org) | 4.3.2 | python2_scientific |
| [traitlets](http://ipython.org) | 4.3.2 | python3_scientific |
| [trollimage](https://github.com/pytroll/trollimage) | 1.10.1 | python2_scientific |
| [trollimage](https://github.com/pytroll/trollimage) | 1.10.1 | python3_scientific |
| [trollsift](https://github.com/pytroll/trollsift) | 0.3.3 | python2_scientific |
| [trollsift](https://github.com/pytroll/trollsift) | 0.3.3 | python3_scientific |
| [udunits](http://www.unidata.ucar.edu/software/udunits) | 2.2.26 | scientific |
| [xarray](https://github.com/pydata/xarray) | 0.11.3 | python2_scientific |
| [xarray](https://github.com/pydata/xarray) | 0.12.3 | python3_scientific |
| [zarr](https://github.com/zarr-developers/zarr) | 2.3.2 | python2_scientific |
| [zarr](https://github.com/zarr-developers/zarr) | 2.3.2 | python3_scientific |

*(158 components)*










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
