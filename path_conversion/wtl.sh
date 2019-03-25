#!/bin/bash
# Convert a path in Windows format to Linux format
# Credit goes to: https://unix.stackexchange.com/a/413378

# Usage: Pass a windows path (e.g. C:\logs\log.txt) by issuing
# wtl <path>

PATH="$1"
declare -a linuxPaths

toLinuxPath()
{
	path=$1
	path="${path/C://c}"
	path="${path//\\//}"
	echo "$path"
}

while IFS= read -r winPath
do
	linuxPath=`toLinuxPath "$winPath"`
	linuxPaths+=("$linuxPath")
done < $PATH

for path in "${linuxPaths[@]}"; do echo "$path"; done
