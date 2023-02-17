#!/bin/bash

python climetlab_test.py >  out.html

nb=`wc -c < out.html`
test $nb -gt 10000
