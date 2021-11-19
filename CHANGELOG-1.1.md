# release_1.1 CHANGELOG

## v1.1.2 (2021-11-09)

- No interesting change

## v1.1.1 (2021-10-08)

### New Features

- add pkgconfig 1.5.2 to fix h5py build since pkgconfig 1.5.4 (not python2 compliant) is available (backport #220) (#225)

## v1.1.0 (2021-05-01)

### New Features

- add msgpack python module (#140)
- add geopandas optional dependencies for polygon plotting with g… (#154)
- add python packages regionmask and salem (#159)
- add ot-batman and dependencies (#160)
- add climetlab and dependencies (#172)
- upgrade eccodes to 2.19.1, Magics to 4.5.1 and Metview to 5.10.1 (#174)
- bump Pillow (python3) to 8.1.2 and lxml (python2 & python 3) to 4.6.3 to fix security vulnerabilities (#203)

### Bug Fixes

- add cloudpickle dependency for dask[dataframe] (#146)
- upgrade MetPy to 0.12.2 for compatibility with Cartopy 0.18 (#149)
- fix python3 build for rasterio since GDAL update and upgrade udu… (#193)


