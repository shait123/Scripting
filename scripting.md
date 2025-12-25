Shell Scripting - shell script consists of commands to perform a task. 
all the commands execute sequentially 
some task like file manipulation, program execution , user interaction , automation of the shell can be done.

Shebang  - #! /bin/bash
sending output to terminal - echo "hello world!"

how to run a script - first we have to make sure script has execute permission rwx
run using  ./script.sh 
        /path/script.sh
        sh script.sh
ctrl+c to terminate 
ctrl+z to stop 

to check the bash is installed 
bash --version
comments - # 
example - #this is a comment 
used for single line command
multiline comment - 
<<comment
...
your comment here
...
comment

Variables - used to store values or data like number , string etc.
example - VAR_NAME=value
VAR_NAME=$(hostname)
echo $VAR_NAME

constant variable - once you defined a variable and don't wanna change it until end of the script.
randomly var_name="Hi"

taking input from user - read <var_name>
                       - read -p "your name" NAME
example -
#! /bin/bash
echo "what is your name/"
read name

read -p "what is your age" age
echo "Name is $name and age is $age"

if-else statement
if [ $age -eq 18]
then 
   echo "you are eligible to vote"
else
   echo "sorry you are not eligible to vote:
fi

elif statement
if [ $country = "india"]
then 
   echo "you are indian"
elif [$country = "Nepal"]
then
   echo "you are from nepal"
else
   echo "you are from earth"
fi 

operators
equal  -eq/==
greaterthanequalto -ge
lessthanequalto  -le
not equal -ne/!=
greater than -gt
less than -lt

check if file/dir exists
if [-d folder_name] if folder exists
[! -d folder_name] if folder not exists

if [-f file_name] if file exists
if [! -f file_name] if file not exists

switch 

echo "hey choose an option"
echo "a = to see the current date"
echo "b = list all the files in current dir"

read choice 
case $choice in 
 a) date;;
 b) ls;;
 c) echo "non a valid input"
esac

for loop 
for i in 1 2 3 4 5
do  echo "number is $i"
done

others ways to write for loop 
for j in Raju sham baburao
for p in {1..20}

iterate values from file 
items="/home/paul/file.txt"
for item in $(cat $items)
do 
   echo $item
done

while loop - 
count = 0 
num = 10 
while [$count -le $num ]
do
   echo "numbers are $count"
   let count++
done

until loop 
a = 10 
until [ $a -eq 1 ]
do 
  echo $a
  a='expr $a - 1'
done

Infinite loop 
while true 
do 
     echo "hii"
     sleep 2s
done

useful concepts
break - to stop the loop 
continue - to stop current iteration of loop and start next iteration

how to make functions - 
function myfun{
        echo "hi"
}

myfun(){
        echo" hello"
}
--------
to call my function 
myfun


how to user arguments in functions
addition(){
        local num1 =$1
        local num2 =$2
        let sum=$num1+$num2
echo " sum of $num1 and $num2 is $sum"
}

arguments in script 
#myscript.sh arg1 arg2 ..
how to access these arguments inside our scipt
to get no of arguments : $#
to display all arguments : $@
to user or display a argument: $1 $2 ..

bash variables
random - a random integer between 0 and 32767 is generated
uid - user id of the user logged in 

/dev/null - in case if you dont wanna print the outpout of a command on terminal or wrtie in a file , we can redirect the output to /dev/null
example:
#cd /root &> /dev/null

useful concepts - 
sleep - to create delay between two executions ex: sleep 1s/1m
exit - to stop script at a point
exit status $? - give you status of previous command if that was successful

log messages - if you want to maintain the logging for your script, you use logger in your script. 
you can find the logs under /var/logs/messages
ex: #logger "hey buddy"

debugging scripts - if we can enable the debugging of the script using below in the script 
set -x
