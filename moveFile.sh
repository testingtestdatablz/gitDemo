#!/bin/bash -x
for file in `ls *.txt`
do
	folderName=`echo $file | awk -F . '{print $1}'`;
	echo $folderName;
   	rm -r $folderName;
	mkdir $folderName;
   cp $file $folderName;
   echo Copied $file into $folderName
done
