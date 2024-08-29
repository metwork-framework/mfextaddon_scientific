# Quickstart

!!! note
    **This guide is for CentOS/Fedora Linux distributions.**

    See mfext installation guide for adapt it for other distributions.


```console

$ ##### As root user #####

$ # We install the Python3 enabled version of scientific libraries/tools
$ yum -y install metwork-mfext-layer-python3_scientific
$ yum -y install metwork-mfext-layer-python3_extratools


$ ##### As lambda user #####

$ # We load the mfext environment (if it is not already done)
$ . /opt/metwork-mfext/share/interactive_profile

$ # We check that the layer is installed and loaded
$ layers |grep scientific
- (*) scientific_core@mfext [/opt/metwork-mfext/opt/scientific_core]
- (*) scientific@mfext [/opt/metwork-mfext/opt/scientific]
- (*) python3_scientific_core@mfext [/opt/metwork-mfext/opt/python3_scientific_core]
- (*) python3_scientific@mfext [/opt/metwork-mfext/opt/python3_scientific]

$ $ layers |grep extratools
- (*) python3_extratools@mfext [/opt/metwork-mfext/opt/python3_extratools]

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
