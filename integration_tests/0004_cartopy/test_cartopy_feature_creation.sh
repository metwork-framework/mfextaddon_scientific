#!/bin/bash

python cartopy_feature_creation.py

if [ ! -f toto.png ]; then
    echo "png file not created"
    exit 1
else
    rm -f toto.png
    exit 0
fi
