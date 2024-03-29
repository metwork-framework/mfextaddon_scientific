# release_1.2 CHANGELOG

## v1.2.2 (2023-07-19)

- No interesting change

## v1.2.1 (2022-02-09)

### New Features

- bump lxml from 4.6.3 to 4.6.5 to fix a security vulnerability (backport #287) (#288)
- add pyepsg ("hidden" dependency of Cartopy) (#295)

## v1.2.0 (2021-11-24)

### New Features

- upgrade pandas from 0.24.2 to 1.2.4 (#217)
- add pkgconfig 1.5.2 to fix h5py build since pkgconfig 1.5.4 (not python2 compliant) is available (#220)
- bump Pillow from 8.1.2 to 8.2.0 to fix 6 vulnerabilities includ… (#221)
- add ffmpeg and ffmpy (#222)
- upgrade batman to 1.9.2 and upgrade dependencies
- build pango with xft support (#232)
- add numba and its dependency llvmlite  (#235)
- add python module pyhdf (#239)
- upgrade Pillow to 8.3.2 to fix security vulnerability (#242)
- add fortran support to eccodes and upgrade eccodes and eccodes-python to last releases (2.23.0 and 1.3.3) (#245)
- add GMT with GSHHG and DCW geographical data and python3 api pygmt (#247)
- switch from python 3.8 to python 3.9 (#254)
- add pysteps and its dependency jsmin (#256)
- upgrade numpy, scipy and a few others to ensure compatibility with layer python3_ia@mfext (#260)
- add dask.distributed and dependencies and upgrade dask and clou… (#265)
- update to salem 0.3.6 to allow installation from source tarball (#268)
- add tiff support in ImageMagick (backport #271) (#272)


