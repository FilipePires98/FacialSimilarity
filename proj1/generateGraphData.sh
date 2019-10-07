#!/bin/bash
# argument is the file to be used
truncate -s 0 graphInput.txt
echo "k,alpha,entropy" >> graphInput.txt
for i in 1 2 3 4 5 6
do
   for f in 0 0.2 0.4 0.6 0.8 1
   do
      echo "$i,$f,$(./fcm $i $f $1 |  tr -dc '.0-9')" >> graphInput.txt
   done
done
