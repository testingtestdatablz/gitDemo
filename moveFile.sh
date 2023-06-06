#!/bin/bash -x
for file in `ls *.txt`
do
   folderName=`echo $file | awk -F . '{print $1}'`;
   echo $folderName;
	if [ -d $folderName ]
	then
   		rm -r $folderName;
		mkdir $folderName;
	fi
   cp $file $folderName;
   echo Copied $file into $folderName
done
