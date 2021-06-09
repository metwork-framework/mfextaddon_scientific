#!/bin/bash

rm -f sample.avi
python ffmpeg_mp4_to_avi.py > output_ffmpeg 2>&1

if [ ! -f sample.avi ]; then
    cat output_ffmpeg
    echo "avi file not created"
    rm -f output_ffmpeg
    exit 1
else
    file sample.avi | grep "RIFF (little-endian) data, AVI, 320 x 240, ~15 fps, video: FFMpeg MPEG-4, audio: (6 channels, 48000 Hz)"
    if [ $? -eq 1 ]; then
      cat output_ffmpeg
      echo "avi file seems not ok"
      rm -f sample.avi
      rm -f output_ffmpeg
      exit 1
    else
      echo "avi file seems ok"
      rm -f sample.avi
      rm -f output_ffmpeg
      exit 0
    fi
fi
