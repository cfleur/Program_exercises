#!/bin/bash

echo "Enter folder path (folder must be lower):"
read folderpath
	cd $folderpath/
foldercontents=`ls -a`
echo $foldercontents
