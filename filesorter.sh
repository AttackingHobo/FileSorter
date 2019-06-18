#!/bin/bash



check_file(){

if [ -z "${1}" ] ;then
 echo "Please input something"
 return;
fi

f="${1}"
result="$(file $f)"
if [[ $result == *"cannot open"* ]] ;then
        echo "NO FILE FOUND ($result) ";
elif [[ $result == *"directory"* ]] ;then
        validFileName="true"
        echo "DIRECTORY FOUND ($result) ";
else
        validFileName="true"
        echo "FILE FOUND ($result) ";
fi

}









echo Files in directory:
ls -I main.sh

# Ask the user for their name
echo Hello Dave, what is your source folder?
read source


validFileName="false"


while [[ "$validFileName" = "false" ]]; do
  echo "Enter a valid Directory"
  read source
  if [ -z "$source" ]
  then
    source = $(pwd)
  fi


  check_file $source            #sets validFileName 


  if [[ "$validFileName" = "false" ]]; then
  echo "Dave!!! thats not a valid directory!"
  continue
  fi
  
done


for filename in $source/*; do 
if [[ $filename = "./test2.txt" ]]; then
mv ${filename} ./sort1
echo moving this file $filename
fi
echo files" ${filename}";


 done

for file in $source*/ $source.*/ ; do echo "$file is a directory"; done

echo I\'ll move this shit: $source

echo how many tagets? Dave! yeah Dave!? how many?!

targetCount=""
while [[ ! $targetCount =~ ^[0-9]+$ ]]; do  #while target count is NOT a number
  read targetCount
  if [[ "$targetCount" =~ ^[0-9]+$  ]]; then #if target count IS a number
    break
  fi
  echo I'm sorry Dave, I can\'t do that!!! Enter a number between 0-9! 
done

echo target count is $targetCount
sleep .2

echo please add $targetCount Directories

validFileName="false"

registeredfolders=()
while [[ ((${#registeredfolders[@]} -lt $targetCount)) ]]; do
  ((registeredfolders++))
  echo " "
  echo Directory: ${#registeredfolders[@]}
  read element
  if [ -z "$element" ]
  then
    element = $(pwd)
  fi


  check_file $element
  if [[ "$validFileName" = "false" ]]; then
  echo "Dave!!! thats not a file!"
  continue
  fi
  registeredfolders+=(element)
  echo $targetCount ${#registeredfolders[@]}
  sleep .1
done

echo What is your target folder, Daaave!? 
read target

arr=(~/$source/*)


echo Fine Dave! I\'ll laboriously move the files between these directories.


#while all files are still in the folder.

#list folders

listCount=0

while [[ ((${#registeredfolders[@]} -lt $listCount)) ]]; do



done


#ask the user what folder they want it in.


#



sleep 30

for i in `seq 1 $targetCount`;
do
echo $i
done   

