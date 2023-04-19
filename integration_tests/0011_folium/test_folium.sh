#!/bin/bash

python folium_test.py

nb=`wc -c < out.html`
test $nb -gt 3000

