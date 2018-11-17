#! /bin/sh
NOW=`date +%s`
REL=`date -d 'FEB 08 00:00:00 2018' +%s`
SECS=$(($NOW-$REL))
WEEK_NO=$(($SECS/3600/24/(7*4)))
OFFSET=197
DEVBLOG_NO=$(($WEEK_NO+$OFFSET))
while ! wget -q https://rust.facepunch.com/blog/devblog-$DEVBLOG_NO/ | grep -iq "Page Not Found"; do
echo `date +%T`
echo $DEVBLOG_NO
echo "NOT FOUND"
sleep 5s
done
echo "DEVBLOG IS LIVE"
#play an audio track to notify user
#paplay ./alarm.wav
