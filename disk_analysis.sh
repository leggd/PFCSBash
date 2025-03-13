#!/bin/bash
#####################################################################
#           CIS1072-N - Programming for Cyber Security - ICA 2      #
#####################################################################
#                       Daniel Legg - D3764716                      #
#####################################################################
# No AI was used in the planning, design, or creation of this code. # 
#####################################################################
# Assign output of 'df --total' to $disk_data variable
disk_data=$(df --total)
# Assign output of 'df -h --total' to $disk_data_short variable
disk_data_short=$(df -h --total)
# Assign extracted total disk size (KB) to $total_size variable
total_size=$(echo "$disk_data" | grep "total" | awk '{print $2}')
# Assign extracted total available disk space (KB) to $total_available variable
total_available=$(echo "$disk_data" | grep "total" | awk '{print $4}')
# Assign shortened/human readable total disk size (GB) to $total_size_short variable
total_size_short=$(echo "$disk_data_short" | grep "total" | awk '{print $2}')
# Assign shortened/human readable total available disk space (GB) to $total_available_short variable
total_available_short=$(echo "$disk_data_short" | grep "total" | awk '{print $4}')
# Calculate and assign used space (KB) to $used_space variable
used_space=$(($total_size-$total_available))
# Multiply and re-assign used space (KB) to $used_space variable
used_space=$(($used_space*100))
# Calculate percentage of usage space and assign to $percentage variable
percentage=$(($used_space/$total_size))
# Print appropriate values, concatenating 'B' to shortened values for clarity
echo "Total Disk Size:" $total_size_short"B" "($total_size KB)"
echo "Available Disk Space:" $total_available_short"B" "($total_available KB)"
echo "Disk Usage:" $percentage"%"
