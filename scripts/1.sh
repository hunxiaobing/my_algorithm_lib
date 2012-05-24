#!/bin/bash
while :
do
    r=`nc -z -v -w 1 $1 $2 2>&1 | grep -v succe`
    if [ "x$r" != "x" ]
    then d=`date +"%H:%M"`; echo -n "$d" ; echo $r
    fi
done

