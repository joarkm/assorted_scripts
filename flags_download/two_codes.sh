#!/bin/bash

# Construct urls

BASEURL="https://www.crwflags.com/fotw/images/"
FILEFORMAT=".gif"
declare -a urls

while IFS= read -r two_code
do
	sub_dir="${two_code:0:1}"
	url="$BASEURL"
	url+="$sub_dir/"
	url+="$two_code"
	url+="$FILEFORMAT"
	urls+="$url"
	urls+=$'\n'
done < "./2codes.txt"

for url in "${urls[@]}"; do echo "$url"; done