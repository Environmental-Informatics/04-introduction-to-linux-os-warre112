#!/bin/bash
#Les Warren 02/12/2020
#Directory information including how many files are in a directory and directory size 

numfiles= ' ls-1 $1 | wc-1'
dirsize= 'du -sh$1 '

echo Number of Files: $numfiles
echo Directory size: $dirsize
