# CHANGELOG

## [Unreleased]

### New Features

- bump Flask from 3.1.0 to 3.1.1 (fix CVE-2025-47278) (#1016)
- bump protobuf from 3.20.3 to 5.29.4 with binary build (#1022)
- bump GDAL from 3.10.3 to 3.11.0 (#1025)
- bump floris from 4.4.1 to 4.4.2 (#1026)
- bump dask and distributed from 2025.4.1 to 2025.5.1 (#1028)
- bump copernicusmarine from 2.1.0 to 2.1.2 (#1029)
- bump xclim from 0.56.0 to 0.57.0 and add xsdba 0.4.0 (#1030)
- bump numexpr from 2.10.2 to 2.11.0 (#1035)
- bump pandas from 2.2.3 to 2.3.0 (#1037)
- remove reportlab (now provided by layer python3_extratools) (#1040)
- add geopy (user request) (#1041)
- bump protobuf from 5.29.4 to 5.29.5 (fix high CVE-2025-4565) (#1043)
- add pygeoapi and dependencies (#1045)
- bump numpy from 2.1.3 to 2.2.6 (#1050)
- bump scipy from 1.14.1 to 1.15.3 (#1051)
- bump zarr from 2.18.7 to 3.1.2 (#1053)
- bump numcodecs from 0.15.1 to 0.16.2 (compatibility zarr 3) (#1054)
- bump tifffile from 2025.3.30 to 2025.9.9 (compatibility zarr 3) (#1055)
- bump xarray from 2025.3.1 to 2025.8.0 (#1057)
- remove python package geos (archived) (#1059)
- bump covjsonkit from 0.1.13 to 0.2.8 (#1065)
- add icclim 7.0.4 and update dependencies when required (#1067)
- bump numpy from 2.2.6 to 2.3.3 (#1069)
- bump pysteps to 1.18.1 (fix pkg_resources depreciation) (#1072)
- bump conflator to 0.1.8 and remove workarounds with previous releases (#1078)
- bump fonttools to 4.61.0 (fix moderate CVE-2025-66034) (#1084)
- bump cramjam from 2.10.0 to 2.11.0 (compat Python 3.14) (#1085)
- bump eckitlib to 1.32.3.6 and odclib to 1.6.2.6 (#1086)
- bump greenlet from 3.2.1 to 3.2.4 (compat Python 3.14) (#1087)
- bump pyarrow from 20.0.0 to 22.0.0 (compat Python 3.14) (#1088)
- bump matplotlib from 3.10.1 to 3.10.7 (compat Python 3.14) (#1090)
- bump eccodes and its python binding from 2.41.0 to 2.44.0 (#1091)
- bump Metview from 5.23.1 to 5.26.1 and its python binding to 1.16.2
- bump odclib to 1.6.2.8 and eccodeslib to 2.44.1.8 (#1097)
- bump llvmlite to 0.46.0 and numba to 0.63.1 (compat Python 3.14) (#1103)
- upgrade all earthkit packages to last releases (#1105)
- downgrade zarr to 2.18.7 for compatibility with icclim/rechunker (#1106)
- bump openturns from 1.24 to 1.26 (#1108)
- add basemap and basemap_data 2.0.0 (in mpl_toolkits) (#1109)
- bump scipy from 1.15.3 to 1.16.3 (#1110)
- bump GDAL (python binding of gdal) from 3.11.0 to 3.11.5 (#1111)
- bump copernicusmarine from 2.1.2 to 2.2.5 (#1112)
- bump ImageMagick6 to 6.9.13-36 (fix several CVEs) (#1113)

### Bug Fixes

- force usage of libeccodes.so built in layer scientific@mfext (#1093)


