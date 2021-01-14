# release_0.9 CHANGELOG

## v0.9.1 (2019-10-23)

### New Features

- first version (copy from mfext)
- remove cairo and add python2_scientific and python3_scientific layers (from mfext)
- first ok version of new mfextaddon scientific
- add integration tests in mfextaddon scientific (previously in mfext)
- add cfgrib and xarray
- upgrade eccodes from 2.10.0 to 2.12.5
- add palettable python component in python?_scientific layers
- add seaborn component in python?_scientific layers
- upgrade python3 from 3.5.6 to 3.7.3, python2 from 2.7.15 to 2.7.16 and all python requirements
- upgrade eccodes and use python3 binding from pypi
- add MetPy
- update Fiona and cf-units
- upgrade Magics to 4.0 and build python2/3 api with pypi
- move netcdf Fortran from mfext to mfextaddon_scientific
- add layer scientific_system_libraries (for build issues)
- embed pango and dependencies fribidi, freetype, fontconfig and harfbuzz
- add python2/3 ecmwfapi module
- upgrade Magics from 4.1.0 to 4.1.2
- add satpy python component and dependencies
- add python packages pyorbital, pycoast and pydecorate

### Bug Fixes

- use mfext builtin jasper libs when compiling eccodes
- remove scikit-learn from python2_scientific (complicated issue with numpy and atlas on centos7)
- fix building issues with proxy

## v0.9.0 (2019-10-22)

### New Features

- first version (copy from mfext)
- remove cairo and add python2_scientific and python3_scientific layers (from mfext)
- first ok version of new mfextaddon scientific
- add integration tests in mfextaddon scientific (previously in mfext)
- add cfgrib and xarray
- upgrade eccodes from 2.10.0 to 2.12.5
- add palettable python component in python?_scientific layers
- add seaborn component in python?_scientific layers
- upgrade python3 from 3.5.6 to 3.7.3, python2 from 2.7.15 to 2.7.16 and all python requirements
- upgrade eccodes and use python3 binding from pypi
- add MetPy
- update Fiona and cf-units
- upgrade Magics to 4.0 and build python2/3 api with pypi
- move netcdf Fortran from mfext to mfextaddon_scientific
- add layer scientific_system_libraries (for build issues)
- embed pango and dependencies fribidi, freetype, fontconfig and harfbuzz
- add python2/3 ecmwfapi module
- upgrade Magics from 4.1.0 to 4.1.2
- add satpy python component and dependencies
- add python packages pyorbital, pycoast and pydecorate

### Bug Fixes

- use mfext builtin jasper libs when compiling eccodes
- remove scikit-learn from python2_scientific (complicated issue with numpy and atlas on centos7)
- fix building issues with proxy


