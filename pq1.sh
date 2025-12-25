#write the code to add two numbers 

#! /bin/bash

echo "enter first number:"
read a 
echo "enter second number:"
read b 

sum=$((a+b))
 
echo "sum is: $sum"

#let say we have shell script named magic.sh , when we execute.
#it should give "this is from magic.sh" as a output.
#accidently someone change file name from magic.sh to magic-changed.sh
#now output should be "this is from magic-changed.sh" as a output.

#answer - so script take input as [script_name,argument1,argumenet2 ..]
#so it is like [$0,$1,$2,..]

#! /bin/bash
echo "this if from $0"

#print numbers from 1 to 10 
#!/bin/bash
for i in {1..10}
do 
  echo "$i"
done

#check if string is empty 
#!/bin/bash
read -p "enter string:" str 
if [ -z "str" ]; then 
  echo "string is empty"
else
   echo "string is not empty"
fi

#chek if directory is writable 
#!/bin/bash
read -p "enter directory: " dir
if [ -w "$dir"]; then
  echo "writable"
else 
  echo "not writable"
fi

#print all command line arguments 
#!/bin/bash
echo "argument passed:"
for arg in "$@"
do 
  echo $arg
done