#!/usr/bin/env python3

import geopandas as gpd
url = "https://naciscdn.org/naturalearth/110m/cultural/ne_110m_admin_0_countries.zip"
gpf = gpd.read_file(url)
gpf.plot()
