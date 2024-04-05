# release_2.1 CHANGELOG

## v2.1.4 (2024-03-08)

### Bug Fixes

- bump reportlab to 3.6.13 to fix CVE-2023-33733 (#612)

## v2.1.3 (2023-12-13)

- No interesting change

## v2.1.2 (2023-07-17)

- No interesting change

## v2.1.1 (2023-02-18)

### Bug Fixes

- add an integration test and a link to fix climetlab usage (backport #452) (#453)

## v2.1.0 (2022-12-03)

### New Features

- back to cligj 0.5.0, fiona 1.8.13 and rasterio 1.1.5 (revert) (#346)
- add ncview (#348)
- add bokeh (#350)
- upgrade GDAL to 3.3.3 for compatibility with python 3.9.12 (#361)
- remove layer python2_scientific@mfext (#364)
- update ecmwflibs to 0.4.17 (#365)
- upgrade Magics to 4.6.0, pyproj to 3.3.1 and Cartopy to 0.20.2 (#369)
- upgrade pandas from 1.2.4 to 1.4.2 (#371)
- upgrade Magics to 4.10.0 and Metview to 5.14.1 (#372)
- upgrade gast to 0.5.3, pythran to 0.11.0 and beniget to 0.4.1 (#374)
- add astropy and dependencies (#375)
- add icclim and dependencies (#377)
- upgrade Cython to 0.29.30 and numpy to 1.21.6 (#379)
- upgrade cligj to 0.7.2, Fiona to 1.8.21 and rasterio to 1.2.10 (#382)
- upgrade numpy from 1.21.6 to 1.22.4 (requiring upgrade of icclim and xclim) (#383)
- upgrade lxml from 4.6.5 to 4.9.1 (security update) (#384)
- switch from python 3.9 to python310 (#386)
- upgrade ESMF to 8.3.0 and cf-units to 3.1.1  (#390)
- bump protobuf from 3.15.6 to 3.19.5 (security update) (#393)
- upgrade pyproj from 3.3.1 to 3.4.0 (#396)
- upgrade flit to 3.7.1 (as flit_core in mfext) (#398)
- upgrade Cython, numpy and scipy to last versions
- upgrade Cartopy, xarray, matplotlib and dependencies
- upgrade Cython, numpy and scipy to last versions (#404)
- upgrade eccodes to 2.27.0, Magics to 4.12.1 and Metview to 1.13.0 (#411)
- add python3 plugin for uwsgi (#412)
- upgrade Flask and itsdangerous for compatibility with Jinja3 (#419)
- upgrade pngquant, nco and netcdf_fortran (#424)
- upgrade cdo, ESMF, FFmpeg, Metview, ImageMagick (#431)
- upgrade many python packages in layer python3_scientific (#433)
- upgrade GMT to 6.4.0 and pygmt to 0.7.0 (#435)
- upgrade numpy to 1.23.5 and dateparser to 1.1.4 (#440)
- downgrade gast to 0.4.0 for compatibility with tensorflow 2.9.3 (#441)
- add pyoscar and dependencies (#442)

### Bug Fixes

- fix bad behavior of eccodes-python in the presence of ecmwflibs (#356)
- fix to build ncl with hdf5 1.12 (#423)


