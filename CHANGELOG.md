# release_1.0 CHANGELOG


## [Unreleased]

### New Features


### Bug Fixes
- add cloudpickle dependency for dask[dataframe] (bp #146) (#147)





## v1.0.1 (2020-09-24)

- No interesting change


## v1.0.0 (2020-09-19)

### New Features
- add metview (without ui support) and pypi metview (python3 only) with update of Magics and eccodes
- upgrade CDO, build it with grib support and add python2/3 modules
- upgrade python GDAL to 2.4.3 and build it with scl (gcc 7.3)
- upgrade GDAL python2/3 support from 2.4.3 to 3.0.2
- upgrade Fiona to 1.8.13 and build it with pip install and scl
- upgrade pngquant from 2.12.0 to 2.12.5
- upgrade netcdf_fortran from 4.4.5 to 4.5.2
- upgrade ImageMagick from 6.9.9-51 to 6.9.10-86
- build all mfextaddon_scientific with devtoolset-8 (gcc-8)
- upgrade esmf from 7_1_0r to 8_0_0 (there was a compilation error with gcc-8)
- remove fontconfig and freetype (moved to mfext)
- upgrade Pillow from 6.2.0 to 6.2.2 to fix security alerts
- add opencv-contrib-python-headless
- upgrade ESMF from 8.0.0 to 8.0.1 and remove patch
- add protobuf (protoc binary, C++ libraries and python2/3 packages)
- add protobuf (protoc binary, C++ libraries and python2/3 packages)
- update Pillow from 6.2.2 to 7.2.0 for security reasons (only python3 because Pillow 7 is not python2 compliant)
- upgrade pyproj to 2.4.2 and Cartopy to 0.18
- add rasterio and geopandas


### Bug Fixes
- patch ImageMagick6 to build with gcc-8 without aligned_alloc





