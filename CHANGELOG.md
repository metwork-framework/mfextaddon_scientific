# CHANGELOG

## [Unreleased]

### New Features

- various updates for Python 3.14 compatibility
- bump matplotlib to 3.10.7 (fix recursive error with Python 3.14)
- bump llvmlite to 0.46.0 and numba to 0.63.1
- downgrade zarr (merge integration branch)
- bump cramjam from 2.11.0 to 2.12.1 (compat. Python 3.15)
- upgrade earthkit packages to 1.0+ (user request) (#1289)
- bump eckit from 1.32.3 to 2.1.0 (compat. eckit python) (#1290)
- bump fckit from 0.14.0 to 0.14.4 (compat. eckit 2.1.0)
- revert : back to eckit 1.32.3 and fckit 0.14.0 (#1292)

### Bug Fixes

- add variable EARTHKIT_ECKITLIB_PATH (#1293)


