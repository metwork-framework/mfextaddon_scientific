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

- use mfext builtin jasper libs when compiling eccodes
- remove scikit-learn from python2_scientific (complicated issue with numpy and atlas on centos7)
- fix building issues with proxy
- patch ImageMagick6 to build with gcc-8 without aligned_alloc
- add cloudpickle dependency for dask[dataframe] (bp #146) (#147)

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

- use mfext builtin jasper libs when compiling eccodes
- remove scikit-learn from python2_scientific (complicated issue with numpy and atlas on centos7)
- fix building issues with proxy
- patch ImageMagick6 to build with gcc-8 without aligned_alloc
- add cloudpickle dependency for dask[dataframe] (bp #146) (#147)


