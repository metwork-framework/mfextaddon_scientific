# release_2.2 CHANGELOG

## v2.2.9 (2025-07-11)

- No interesting change

## v2.2.8 (2024-10-17)

### New Features

- add salem sample data file (backport #653) (#654)
- upgrade cdsapi to 0.7.3 to be able to use CDS new data stores (#668)

## v2.2.7 (2024-08-20)

### New Features

- upgrade cdsapi to 0.7.0 (access to new infrastructure) (backport #639) (#640)

## v2.2.6 (2024-04-27)

### New Features

- downgrade ImageMagick to 6.9.12-93 to fix svg2pdf issue (#627)

## v2.2.5 (2024-04-13)

### New Features

- upgrade numpy from 1.26.3 to 1.26.4 (backport #610) (#611)
- upgrade dask to 2024.4.1 for compatibility with python 3.11.9 (#620)

### Bug Fixes

- remove setuptools-git-versioning from esmpy dependencies (#616)
- remove setuptools-git-versioning from esmpy dependencies

## v2.2.4 (2024-02-01)

### New Features

- add floris and dependencies (#605)
- add floris and dependencies (#607)

## v2.2.3 (2024-01-24)

### New Features

- bump Pillow from 10.1.0 to 10.2.0 (fix CVE-2023-50447) (backport #603) (#604)

## v2.2.2 (2024-01-16)

### New Features

- bump climetlab from 0.19.1 to 0.19.2 (backport #589) (#590)
- bump GDAL to 3.8.3 and networkx to 3.2.1 (backport #591) (#592)
- bump numpy from 1.26.2 to 1.26.3 (#593)
- add openpyxl, xlsxwriter and odswriter (#595)

## v2.2.1 (2023-12-20)

### New Features

- bump GDAL from 3.8.0 to 3.8.1 (backport #577) (#578)
- upgrade pandas to 2.1.4 and geopandas to 0.14.1 (backport #581) (#582)
- upgrade xclim to 0.46.0 and icclim to 6.5.0 (#583)
- upgrade eccodes to 2.33.0, Magics to 4.15.0, Metview to 5.21.0 (#585)
- upgrade xclim from 0.46.0 to 0.47.0 (#587)

## v2.2.0 (2023-11-28)

### New Features

- add polars, pyarrow and fastparquet (#443)
- bump nco to 5.1.4 and add python binding (#449)
- add libspatialindex and python packages folium, pyogrio, plotly and rtree (#450)
- upgrade folium to 0.14.0 and climetlab to 0.13.5 (#454)
- upgrade esmf to 8.4.1 and simplify our patch (#456)
- bump ecmwflibs from 0.4.17 to 0.5.1 (#458)
- upgrade xclim from 0.37.0 to 0.42.0 (#460)
- upgrade numba to 0.57 and llvmlite to 0.40 (rc1) (#461)
- upgrade numpy from 1.23.5 to 1.24.2 (#462)
- upgrade icclim from 5.4.0 to 6.1.5 (waiting release > 6.2.0) (#464)
- upgrade protobuf C library to 3.19.6 (same as python package) (#468)
- upgrade icclim from 6.1.5 to 6.3.0 (#469)
- upgrade esmf from 8.4.1 to 8.4.2 (#471)
- upgrade Flask to 2.3.2 (security update) and ecmwflibs to 0.5.3 (#472)
- upgrade climetlab to 0.14.25 add add numpngw (#474)
- upgrade xclim to 0.43.0 and icclim to 6.4.0 (#477)
- add python package geographiclib (#479)
- bump tornado to 6.3.2 and upgrade distributed and dask (#481)
- upgrade eccodes to 2.30.2 and its python binding to 1.5.2 (#482)
- upgrade Magics from 4.12.1 to 4.13.0 (#483)
- upgrade Metview to 5.19.1 and its python binding to 1.14.0 (#484)
- update numba to 0.57.1 and llvmlite to 0.40.1 (#494)
- upgrade scipy from 1.9.3 to 1.10.1 (security upgrade) (#497)
- update lmoments3 to 1.0.6 (#498)
- bump tornado to 6.3.3 (security update) (#514)
- bump reportlab from 3.6.12 to 3.6.13 (security update level high) (#524)
- upgrade ecbuild to 3.8.0 and eckit to 1.24.4 (#525)
- upgrade Metview to 5.19.2 (#529)
- upgrade eccodes to 2.31.0 and eccodes-python to 1.6.0 (#530)
- upgrade Magics from 4.13.0 to 4.14.2 (#531)
- upgrade ECMWF python packages to last releases (#532)
- upgrade climetlab from 0.14.25 to 0.16.7 (#533)
- add blinker dependency (#534)
- fork of configobj to address CVE-2023-26112, thanks to cdcadman (#535)
- upgrade GDAL to 3.7.1.1 (compatibility with C library) (#536)
- upgrade to GDAL 3.7.2 (#537)
- upgrade h5py from 3.7.0 to 3.9.0 (compatibility with hdf5 1.14.2) (#538)
- upgrade netcdf-fortran to 4.6.1 and pyhdf to 0.11.3 (#540)
- upgrade beniget to 0.4.1, gast to 0.5.4, pythran to 0.14.0 (#542)
- upgrade pyproj from 3.4.0 to 3.6.1 (#543)
- bump Pillow from 9.3.0 to 10.0.1 (security update) (#545)
- upgrade pngquant from 2.17.0 to 2.18.0 (#546)
- upgrade nco to 5.1.8 and its python binding to 1.1.0 (#548)
- upgrade eccodes, Metview and ECMWF stuff to last releases (#549)
- upgrade esmf to 8.5.0 and ImageMagick to 6.9.12-98 (#550)
- upgrade cdo to 2.2.0 and its python binding to 1.6.0 (#551)
- upgrade FFmpeg to 6.0 and cv2 to 4.8.1.78 for compatibility
- upgrade FFmpeg to 6.0 and cv2 to 4.8.1.78 for compatibility (#552)
- Upgrade ncview from 2.1.7 to 2.1.9 (#554)
- upgrade g2clib to 1.6.3 (#555)
- upgrade Cython to 0.29.36, numpy to 1.25.2, numba to 0.58.1 (#556)
- upgrade scipy from 1.10.1 to 1.11.3 and other upgrades (#557)
- upragde many python packages to last available version (#558)
- upgrade Flask from 2.3.3 to 3.0.0 (#560)
- upgrade python GDAL from 3.7.2 to 3.7.3 (#561)
- add python package windrose (#563)
- bump pyarrow from 14.0.0 to 14.0.1 (critical security) (#566)
- upgrade climetlab to 0.18.15 and ecmwflibs to 0.5.7 (#568)
- bump GDAL to 3.8.0 (#569)
- upgrade esmf from 8.5.0 to 8.6.0 (#570)
- upgrade pandas from 2.1.2 to 2.1.3 (#571)
- upgrade scipy from 1.11.3 to 1.11.4 (#572)
- upgrade numpy from 1.25.2 to 1.26.2 (#573)
- upgrade climetlab from 0.18.15 to 0.19.0 (#574)

### Bug Fixes

- add an integration test and a link to fix climetlab usage (#452)


