#!/bin/sh

DSTDIR="a03_web_compil"
cd ..
rm -rf $DSTDIR
mkdir -p $DSTDIR
cp -a *.html *.png *.jpg $DSTDIR/
cd $DSTDIR

find . -type f -iname "*.html" | while read -r INFILE
do
  echo "" ; echo ">>>>>>>>>>>>>>>>>>>>>>> Processing: $INFILE"
  OUTFILE="$INFILE"
  tidy -m --wrap 0 --hide-comments yes --tidy-mark 0 $INFILE
done
