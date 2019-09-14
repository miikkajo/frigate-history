#!/bin/sh
IMAGEPATH=$1
HISTORY_SIZE=$2

# create directory if imagepath is missing
if [ ! -d $IMAGEPATH ]; then
  mkdir -p $IMAGEPATH
fi

# if files are not present, copy from latest 
for i in `seq 1 $HISTORY_SIZE`; 
do
  IMAGEFILE=$i.jpg
  if [ ! -f $IMAGEPATH/$IMAGEFILE ]; then
    cp $IMAGEPATH/latest.jpg $IMAGEPATH/$IMAGEFILE
  fi
done

# if latest does not differ do not update
if diff $IMAGEPATH/latest.jpg $IMAGEPATH/$HISTORY_SIZE.jpg > /dev/null
then 
  exit 0
fi

#rock and roll history
for i in `seq 2 $(expr $HISTORY_SIZE)`; 
do
  cp $IMAGEPATH/$i.jpg $IMAGEPATH/$(expr $i - 1).jpg
done
cp $IMAGEPATH/latest.jpg $IMAGEPATH/$HISTORY_SIZE.jpg
