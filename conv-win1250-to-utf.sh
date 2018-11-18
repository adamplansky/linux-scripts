#!/bin/sh
for f in *
do
	if echo $f | grep -q ".srt"; then
		echo "Processing $f"
		iconv -f CP1250 -t UTF8 "$f" > "$f"
	fi
done
