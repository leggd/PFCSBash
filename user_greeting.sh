#!/bin/bash
#####################################################################
#           CIS1072-N - Programming for Cyber Security - ICA 2      #
#####################################################################
#                       Daniel Legg - D3764716                      #
#####################################################################
# No AI was used in the planning, design, or creation of this code. # 
#####################################################################
# Display appropriate request message and assign user input to $name variable
read -p "Please enter your name: " name 
# Print greeting with user input $name variable
echo "Hello" $name"!" 
# Redirect the output to .txt file, overwriting
echo "Hello" $name"!" > greeting.txt
