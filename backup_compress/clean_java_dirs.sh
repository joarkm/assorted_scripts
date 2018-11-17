#!/bin/sh
# Finds directories containing a pom.xml file and executes mvn clean within them
# Exits if mvn clean is unsuccessful for any of the directories
set -e
cd ~/Documents
find . -type f -name "pom.xml" -exec dirname {} > java_dirs.lst \;
BASEDIR=`pwd`
ERRFILE="$BASEDIR/mvn.log"
while read -r path
do
	cd "$path"
	echo "cleaning project at `pwd`"
	mvn clean > $ERRFILE || (echo "clean FAILED...exiting" && cat $ERRFILE && exit 127)
	cd $BASEDIR
done < $BASEDIR/java_dirs.lst

