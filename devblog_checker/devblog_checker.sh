#! /bin/sh
NOW=`date +%s`
REL=`date -d 'APR 24 00:00:00 2014' +%s`
SECS=$(($NOW-$REL))
WEEK_NO=$(($SECS/3600/24/7))
while !wget -q https://rust.facepunch.com/blog/devblog$WEEK_NO/ || ! wget -q https://rust.facepunch.com/blog/devblog-$WEEK_NO/; do
echo `date +%T`
echo $WEEK_NO
echo "NOT FOUND"
sleep 5s
done
echo "DEVBLOG IS LIVE"
#paplay ./alarm.wav
#paplay ./alarm.wav
