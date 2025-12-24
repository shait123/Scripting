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
