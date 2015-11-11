#!/bin/bash
if [ $# -gt 0 ];then

	for filepath in $*
	do
		if [ -e $filepath -a -r $filepath -a -w $filepath ];then
			while read line
			do
				echo "line:$line"
			done <$filepath
		else
			echo "file $filepath does't exist or have enough permission"
		fi
	done
fi
