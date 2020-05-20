# CHANGELOG


## [Unreleased]

### New Features
- add opencv-contrib-python-headless
- upgrade Pillow from 6.2.0 to 6.2.2 to fix security alerts
- remove fontconfig and freetype (moved to mfext)
- upgrade esmf from 7_1_0r to 8_0_0 (there was a compilation error with gcc-8)
- build all mfextaddon_scientific with devtoolset-8 (gcc-8)
- upgrade ImageMagick from 6.9.9-51 to 6.9.10-86
- upgrade netcdf_fortran from 4.4.5 to 4.5.2
- upgrade pngquant from 2.12.0 to 2.12.5
- upgrade Fiona to 1.8.13 and build it with pip install and scl
- upgrade GDAL python2/3 support from 2.4.3 to 3.0.2
- upgrade python GDAL to 2.4.3 and build it with scl (gcc 7.3)
- upgrade CDO, build it with grib support and add python2/3 modules
- add metview (without ui support) and pypi metview (python3 only) with update of Magics and eccodes


### Bug Fixes
- patch ImageMagick6 to build with gcc-8 without aligned_alloc





