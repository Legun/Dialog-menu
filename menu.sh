#!/bin/bash
let i=0 # define counting variable
W=() # define working array
while read -r line; do # process file by file
    let i=$i+1
    W+=($i "$line")
done < <( ls -1 C64/[D64]/A )
FILE=$(dialog --title "List file of directory /home" --menu "Chose one" 24 80 17 "${W[@]}" 3>&2 2>&1 1>&3) # show dialog and store output
clear
x64 $W
