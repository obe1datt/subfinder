#!/bin/sh 

for name in $(cat $2)
do 
dig +noall +answer $name.$1 | grep "A" |  grep -v "92.242.129.221" | grep -v "CNAME"
done 