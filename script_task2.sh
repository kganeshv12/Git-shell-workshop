# Task 1: 
# The first argument provided from cmd must be the language you are running it in
# Just plainly print the first argument that was provided 
# The second argument is the name of the python/C file that must be run 
# Run the python file, using input1.txt as stdin, and write the output to a file user_output1.txt 
# Display user_output1.txt to the user as user output, and the file output1.txt as the expected output 
# Once you have tested out the script and verified it's working, commit it to a branch: <your_name>

#!/bin/bash

for i in "$@"
do
	echo "Running $i on test cases"
	for j in $(seq 3)
	do
		echo "Running test case $j"
		cat input$j.txt | python3 $i > output$j.txt
		echo "Output"
		cat output$j.txt
	done
done

