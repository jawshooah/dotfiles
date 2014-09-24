#!/bin/sh

# If no arguments, print usage statement and exit
[[ -n $1 ]] || { echo "Usage: sh brew_uses.sh outfile"; exit 0; }

BREW_LIST=`brew list`;
OUTPUT="";
for brew in $BREW_LIST; do
  echo "Getting uses for $brew...";
  USES=`brew uses $brew --installed`;
  OUTPUT="$OUTPUT$brew:";
  for use in $USES; do
    OUTPUT="$OUTPUT $use";
  done;
  OUTPUT="$OUTPUT\n";  
done;
echo $OUTPUT > $1
