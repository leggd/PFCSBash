#!/bin/bash
#####################################################################
#           CIS1072-N - Programming for Cyber Security - ICA 2      #
#####################################################################
#                       Daniel Legg - D3764716                      #
#####################################################################
# No AI was used in the planning, design, or creation of this code. # 
#####################################################################
echo
 # Print the output of 'pwd' command in terminal
echo "Current Working Directory:" $(pwd)
echo

echo "Files in Current Directory:"
# Iteration through current working directory
for file in * 
do
# Print file name in terminal
echo $file
done
echo
# Print the output of 'date' command in terminal
echo "Current Date and Time:" $(date)
echo
