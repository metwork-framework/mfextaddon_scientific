#!/usr/bin/env python3

import folium
from folium.plugins import MarkerCluster
import pandas as pd
boulder_coords = [40.015, -105.2705]
my_map = folium.Map(location = boulder_coords, zoom_start = 13)
my_map.save("out.html")
