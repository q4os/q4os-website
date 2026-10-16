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
rm -rf .old *.disabled .git/ .dev/ CLAUDE.md .claude/
# hidden files (old copies, backups) and image sources are not for upload;
# keep the server config and touch/.tstinet (looks like an internet check)
find . -name '.?*' ! -name .htaccess ! -name .user.ini ! -name .tstinet -prune -exec rm -rf {} +
find . -type f -iname '*.xcf' -exec rm -f {} +

find . -type f -iname "*.html" | while read -r INFILE
do
  echo "" ; echo ">>>>>>>>>>>>>>>>>>>>>>> Processing: $INFILE"
  OUTFILE="$INFILE"
  tidy -m --wrap no --hide-comments yes --tidy-mark no $INFILE
done

find . -type f -iname "*.css" | while read -r INFILE
do
  echo "" ; echo ">>>>>>>>>>>>>>>>>>>>>>> Processing: $INFILE"
  OUTFILE="$INFILE"
  csstidy $INFILE $OUTFILE
done
