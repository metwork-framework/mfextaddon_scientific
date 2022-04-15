#!/bin/bash

set -e

echo "NCL Version : "
ncl -V

echo ""
echo "NCARG_ROOT : "
ncargpath root

echo ""
echo "test grib edition 2"

ncl_filedump ../0005_cdo_read_grib2/fic_grib2_test.grib

ncl_filedump ./GRIBASPOCEURW1S100Top20210506120000_75.grib
