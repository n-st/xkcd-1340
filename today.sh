#!/bin/bash

date=$(date '+%F')
files=""
for i in {0..9}
do
    files="$files ${date:$i:1}.png"
done

files="$files !.png"

convert $files +append "$date.png"
convert unique_date_blank.png "$date.png" -gravity north -geometry +0+34 -composite today.png
rm "$date.png"
