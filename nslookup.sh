#!/bin/bash
cat iplist.ini|awk {'print "nslookup -vc '$1' " $1'}|parallel|grep 'Address: ' # |grep -o '\d*\.\d*\.\d*\.\d*' #|uniq #|awk {'print $2'}
