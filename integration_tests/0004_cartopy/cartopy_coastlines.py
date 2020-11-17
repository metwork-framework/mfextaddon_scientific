#!/usr/bin/env python3

import matplotlib.pyplot as plt
import cartopy.crs as ccrs
import cartopy.feature as cfeature
from matplotlib.offsetbox import AnchoredText

plt.figure()
ax = plt.axes(projection=ccrs.PlateCarree())
ax.coastlines()
plt.savefig('toto.png')
