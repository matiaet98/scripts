#!/bin/bash

# set the internal field spereator to line break, so that we can iterate easily over the verify-pack output
IFS=$'\n';
 
objects=`git verify-pack -v .git/objects/pack/pack-*.idx | grep -v chain | sort -k3nr`
 
echo "All sizes are in kB's. The pack column is the size of the object, compressed, inside the pack file."
 
output="size,pack,SHA,location"
for y in $objects
do
    size=$((`echo $y | cut -f 5 -d ' '`))
    compressedSize=$((`echo $y | cut -f 6 -d ' '`))
    # extract the SHA
    sha=`echo $y | cut -f 1 -d ' '`
    # find the objects location in the repository tree
    other=`git rev-list --all --objects | grep $sha`
    output="${output}\n${size},${compressedSize},${other}"
done
 
echo -e $output | column -t -s ', '
