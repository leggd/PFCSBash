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
        # Assign name of file to $file_name variable
        file_name=$1
        # Determine if file exists
        if [ -a $file_name ] #(muru & Bianchi, 2020)
            then
            echo "File Exists"
            # Determine if file is writeable
            if [ -w $file_name ] #(muru & Bianchi, 2020)
                then
                echo "File is Writable"
                else
                echo "File is Not Writable"
            fi
        else
            echo "File does not exist"
        fi
    fi
fi

#Reference
#muru & Bianchi, P., 2020. Checking for a file and whether it is readable and writable.[Online] 
#Available at: https://askubuntu.com/questions/558977/checking-for-a-file-and-whether-it-is-readable-and-writable
#[Accessed 17 November 2024]



