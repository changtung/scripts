#!/bin/bash
grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' $1 >> .tmp
filename=.tmp
while read -r line
do
  geoiplookup $line | cat >> geolocations
  #echo $id
  #code for passing id to other script file as parameter
done < "$filename"

#sort -u geolocations | cat > geolocations
