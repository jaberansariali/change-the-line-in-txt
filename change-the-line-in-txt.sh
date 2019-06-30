#!/bin/bash 
#title           :change-the-line-in-txt.sh
#description     :This script will change the line of you choose and what do you want to  write to this line.
#author		 :a.ansari
#date            :2019-06-30
#version         :0.1    
#usage		 :bash change-the-line-in-txt.sh
#notes           :Install Vim and Emacs to use this script.
#bash_version    :4.2.46(2)-release
#==============================================================================



read -p "Plz enter the absolute txt's path to change the line: " path
read -p "Enter the line number " line
read -p "What do you want to write to this line:$line=" w
echo "$(awk  -v n=$line -v s="$w"  'NR == n {print s} {print}' $path)" >$path

