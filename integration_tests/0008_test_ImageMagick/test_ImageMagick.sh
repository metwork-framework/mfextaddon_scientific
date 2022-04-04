#!/bin/bash

set -e

echo "ImageMagick version and delegates : "
echo ""
convert --version

echo ""
echo "ImageMagick list of supported formats : "
echo ""
identify -list format

