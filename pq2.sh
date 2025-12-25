# print your name and today's date 
#!/bin/bash
echo" my name is ssr"
date

# check whether a numberis event or odd
#!/bin/bash
read -p "enter number: " n 
if ((n%2 == 0)); then 
   echo "even"
else
   echo "odd"
fi

#find the greater of two numbers
#!/bin/bash
read -p "enter first number:" a
read -p "enter second number: " b 
if ((a>b)); then 
  echo "$a is greater"
else 
  echo "$b is greater"
fi

# check if a file exists 
#!/bin/bash
read -p "enter filename: " file
if [-f "$file" ]; then 
  echo "file exists"
else
  echo "file does not exists"
fi


#count files and directories in current folder
#!/bin/bash
files=$(ls -l | grep "^-" | wc -l)
dirs=$(ls -l | grep "^d" | wc -l)
echo "files: $files:
echo "directories: $dirs"



