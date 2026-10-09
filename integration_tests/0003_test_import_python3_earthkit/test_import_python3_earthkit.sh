#!/bin/bash

export LD_LIBRARY_PATH=$EARTHKIT_ECKITLIB_PATH:$LD_LIBRARY_PATH
echo $LD_LIBRARY_PATH
python import_python3_earthkit.py
