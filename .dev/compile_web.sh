#!/bin/sh

cd ../
SRCDIR="$(pwd)"
DSTDIR="$SRCDIR/../a02_web_compil/"
cd ../
# echo $SRCDIR
# echo $DSTDIR

rm -rf $DSTDIR
cp -a $SRCDIR $DSTDIR
cd $DSTDIR
rm -rf .old *.disabled .git/ .dev/

find . -type f -iname "*.html" | while read -r INFILE
do
  echo "" ; echo ">>>>>>>>>>>>>>>>>>>>>>> Processing: $INFILE"
  OUTFILE="$INFILE"
  tidy -m --wrap 0 --hide-comments yes --tidy-mark 0 $INFILE
done

find . -type f -iname "*.css" | while read -r INFILE
do
  echo "" ; echo ">>>>>>>>>>>>>>>>>>>>>>> Processing: $INFILE"
  OUTFILE="$INFILE"
  csstidy $INFILE $OUTFILE
done
