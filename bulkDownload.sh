#!/bin/bash

FFMPEG="/usr/bin/ffmpeg"

# Checking for ffmpeg executable
if [ ! -f $FFMPEG ]
then
	echo "[ERR] ffmpeg not found. Please install it first."
	exit 1
fi

# Checking if input is a file
if [ ! -f $1 ]
then
	echo "[ERR] $1 doesn't seem to be a file."
	exit 2
fi

# Downloading files
while read line
do
	URL=$(echo $line | cut -f1 -d';')
	FILENAME=$(echo $line | cut -f2 -d';').mp4

	echo "Downloading $FILENAME from $URL"
	ffmpeg -i $URL -c copy -bsf:v h264_mp4toannexb $FILENAME
done < $1

echo ""
echo "Done."