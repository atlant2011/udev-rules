#!/bin/bash
printers="1000 1005 1018 1020 P1005 P1006 P1007 P1008 P1505 P1505"
cd /tmp
for prn in $printers; do
    img="sihp${prn}.img"
    dl="sihp${prn}.dl"
    getweb $prn
    if [ -f $img ]; then
        arm2hpdl $img > $dl
        sudo cp $dl /usr/share/foo2zjs/firmware/$dl
        rm $img $dl
    fi;
done