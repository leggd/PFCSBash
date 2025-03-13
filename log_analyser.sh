#!/bin/bash
#####################################################################
#           CIS1072-N - Programming for Cyber Security - ICA 2      #
#####################################################################
#                       Daniel Legg - D3764716                      #
#####################################################################
# No AI was used in the planning, design, or creation of this code. # 
#####################################################################
# Assign argument amount to $argument_count variable
argument_count=$#
# Determine if there is no arguments
if [ $argument_count -lt 1 ]
    then
    echo "No arguments provided"
    else
    # Determine if there is too many arguments
    if [ $argument_count -gt 1 ]
        then
        echo "Too many arguments provided"
        exit
        else
        # Read and assign input file to $log variable
        log=$(cat $1)
        # Iterate through log line by line
        for line in $log
            do
            # Determine if current line contains '[error]'
            if [ $line == "[error]" ]
                then
                # Increase $error_count variable by 1 if '[error]' is found
                error_count=$((error_count+1))
            fi
            done
    # Determine if error count is above 0        
    if [ $error_count -gt 0 ]
        then
        # Print occurrences if above 0
        echo $error_count "occurrences of the word 'error' in $1"
        else
        echo "No occurrences of the word 'error' in $1"
        fi
    fi
fi
