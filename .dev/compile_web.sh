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

# # add into index.html, backward compatibility for auto-downloads capability
# echo "<!--" >> index.html
# echo '<A HREF="downloads/setup_vboxgutils-q4_0.1.1-r3_all.esh">' >> index.html
# echo '<A HREF="downloads/setup_q4os-chrome_0.3.3-r1_all.esh">' >> index.html
# echo '<A HREF="downloads/setup_lookswitcher_0.3.3-r1_all.esh">' >> index.html
# echo "-->" >> index.html
