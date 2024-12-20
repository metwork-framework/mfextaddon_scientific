#!/usr/bin/env python3

import sys
import climetlab as cml

try:
    atlantic = cml.load_dataset("hurricane-database", bassin="atlantic")
except Exception:
    print("TimeoutError : can't load hurricane-database\n")
    exit(0)

df = atlantic.to_pandas()
katrina = df[(df.name == "katrina") & (df.year == 2005)]
html = cml.interactive_map(katrina)

print(html, file=sys.stdout)
