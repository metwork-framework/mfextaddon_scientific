#!/bin/bash

cdo sinfo fic_grib2_test.grib | grep "File format : GRIB2"
if [ ! $? -eq 0 ]; then
    exit 1
else
    exit 0
fi
