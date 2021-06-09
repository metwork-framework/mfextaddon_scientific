#!/usr/bin/env python3

import ffmpy
ff = ffmpy.FFmpeg(
    inputs={'sample.mp4':None},
    outputs={'sample.avi':None}
)
ff.cmd
ff.run()
