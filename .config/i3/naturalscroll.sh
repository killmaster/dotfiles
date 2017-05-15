#!/bin/bash

for i in $(xinput list | grep "Sensei" | perl -n -e'/id=(\d+)/ && print "$1\n"'
	xinput set-prop $i 286 0
done
