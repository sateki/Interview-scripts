cd /cygdrive/d/interview/Tasks
echo '----------------------------------------'
echo ' S:NO     Tile of the Book   Author     '
echo '----------------------------------------'
title=`more Books.xml | egrep "<Name>.*</Name>" |sed -e "s/<Name>\(.*\)<\/Name>/\1/"|tr "|" " " ` 
author=`more Books.xml | egrep "<Author>.*</Author>" |sed -e "s/<Author>\(.*\)<\/Author>/\1/"|tr "|" " " ` 
echo " $title " > title.txt 
echo " $author " > author.txt 
Pr -n -m -t title.txt author.txt
