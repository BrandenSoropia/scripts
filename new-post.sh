#!/bin/bash
<<ARGUMENTS
$1 -> Title surrounded in quotes ex: "My Markdown File"
$2 -> Destination file path including ending back slash ex: "./path/to/destination/"
ARGUMENTS

unformattedTitle=$1
title=$(echo ${unformattedTitle// /-} | tr '[:upper:]' '[:lower:]')
path=$2
echo $title

formattedDate=`date +'%Y-%m-%d'`
file=$formattedDate-$title.md

if [ ! -d "$path" ]; then # Check if directory exists
  echo $path "does not exist"
  exit 1
elif [ -f "$path$file" ]; then # Check if file already exists in that directory
  echo $file "already exists in" $path
  exit 1
fi



## Create file and append these base lines to it

cat <<EOF >> "$path$file"
---
title: $unformattedTitle
date: `date +'%Y-%m-%d %H:%M:%S'` -0400
---
EOF
echo "Created file" $file

exit 0
