#!/bin/bash

python climetlab_test.py >  out.html

wc -c out.html | grep 12052 
