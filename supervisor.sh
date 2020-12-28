#!/bin/bash
START=/home/minecraft/world1/start.sh
ME=`basename "$0"`
PIDFILE=$ME.pid
rm -f $PIDFILE
echo $$ > $PIDFILE
while [[ -f "$PIDFILE" ]]
do
cnt=`ps -ef | grep -v grep  | grep -e '^ec2-user[[:space:]]+[0-9][0-9]*[[:space:]]+[0-9][0-9]*.*[0-9][0-9]:[0-9][0-9]:[0-9][0-9][[:space:]]+java.*spigot' | wc -l`
if [[ $cnt -eq 0 ]];then
	echo count is $cnt , start spigot
	$START
else
	echo spigot running $cnt instances
fi
sleep 15
done
