#!/bin/bash

download_img(){
	in="$1"
	fileName="${in: -6}"
	# curl -s -w "%{time_total} seconds to download $fileName \n" -O "$in"
	curl -s -w "$fileName saved to flags/$fileName \n" -O "$in" || \
	echo "[ERR] Failed to download \"$fileName\" - no such file?"
}
export -f download_img

mkdir flag_images
cd flag_images && cat "../$1" | parallel --no-notice --jobs 16 --load 6 download_img {}
