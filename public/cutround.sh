#!/bin/bash
#---$1:edgeSize  $2:width(i.e. height)  $3:radius  $4:srcFileName $5:destFileName---
echo "start cutting image $1 ...."
info=`identify -format "%wx%h" $4`
idx=`expr index "$info" 'x'`
idx_w=$((idx-1))
idx_h=$((idx+1))
width=`expr substr "$info" 1 $idx_w`
height=`expr substr "$info" $idx_h 20`
echo "width: $width"
echo "height: $height"
if (($width > $height))
then
  echo "width longer"
  cropx=$((($width-height)/2+$1))
  cropy=$1
  nsize=$(($height-$1*2))
else
  echo "height longer"
  cropx=$1
  cropy=$((($height-$width)/2+$1))
  nsize=$(($width-$1*2))
fi
 convert -crop "$nsize x $nsize+$cropx+$cropy" -resize $2x$2! -roundcorners $3 $4 $5
