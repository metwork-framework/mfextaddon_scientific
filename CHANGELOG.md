# release_2.0 CHANGELOG

## [Unreleased]

### Bug Fixes

- bump reportlab to 3.6.13 to fix CVE-2023-33733

## v2.0.7 (2023-12-13)

- No interesting change

## v2.0.6 (2023-07-21)

- No interesting change

## v2.0.5 (2023-07-17)

- No interesting change

## v2.0.4 (2022-06-14)

- No interesting change

## v2.0.3 (2022-06-10)

### New Features

- update ecmwflibs to 0.4.17 (backport #365) (#366)

## v2.0.2 (2022-06-03)

### New Features

- upgrade gdal python binding to 3.0.4 (as library gdal in mfext) (#363)

## v2.0.1 (2022-05-18)

### Bug Fixes

- fix bad behavior of eccodes-python in the presence of ecmwflibs (backport #356) (#359)

## v2.0.0 (2022-04-27)

### New Features

- add tiff support in ImageMagick (#271)
- add scikit-image, dependencies and build dependencies (#273)
- add reportlab python3 package (#274)
- upgrade eccodes to 2.24.0 and his python interface to 1.4.0 (#277)
- build on centos8 (#280)
- bump lxml from 4.6.3 to 4.6.5 to fix a security vulnerability (#287)
- upgrade numpy from 1.19.5 to 1.21.5 to fix security vulnerability (#289)
- bump Pillow from 8.3.2 to 9.0.0 to fix a security vulnerability (#292)
- add pyepsg ("hidden" dependency of Cartopy) (#293)
- add ncl_ncar (#297)
- bump python2 protobuf to 3.15.0 (security update) (#301)
- upgrade pycurl to 7.44.1 and fix cdo build (#309)
- bump Pillow from 9.0.0 to 9.0.1 to fix a security vulnerability (#323)
- remove fribidi, harfbuzz, pango and gdbm builds (#324)
- add rsvg support in ImageMagick and ffmpeg (#325)
- upgrade eccodes to last release 2.25.0 and its python binding to 1.4.1 (#328)
- add python3 module statsmodels and dependency patsy (#329)
- add g2clib support in ncar/ncl (#330)
- add ncview (backport #348) (#349)
- add bokeh (backport #350) (#351)


