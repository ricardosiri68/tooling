#!/bin/bash


src_dir=$1;
dest_dir=$2;
max_width=$3;


for image_path in $(ls $src_dir/*.{jepg,jpg,png} 2> /dev/null); do
    convert $image_path -resize $max_width $dest_dir/$(basename $image_path);
done
