#!/bin/bash

FFMPEG="/usr/bin/ffmpeg"

# Checking for ffmpeg executable
if [ ! -f $FFMPEG ]
then
	echo "[ERR] ffmpeg not found. Please install it first."
	exit 1
fi

# Setting variables
URL=$1
FILENAME=$2.mp4

echo "Downloading $FILENAME from $URL"
ffmpeg -i $URL -c copy -bsf:v h264_mp4toannexb $FILENAME
echo ""
echo "Done."