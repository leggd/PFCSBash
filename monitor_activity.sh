#!/bin/bash
#####################################################################
#           CIS1072-N - Programming for Cyber Security - ICA 2      #
#####################################################################
#                       Daniel Legg - D3764716                      #
#####################################################################
# No AI was used in the planning, design, or creation of this code. # 
#####################################################################
# Start infinite loop
while :
do
echo
echo "Running netstat, please wait... (CTRL+C to exit)"
# Assign output of netstat command to $netstat_output variable
netstat_output=$(netstat)
# Assign total count of 'ESTABLISHED' to $active_connections variable
active_connections=$(echo "$netstat_output" | grep -c "ESTABLISHED")
# Determine if $active_connections variable is over 100
if [ $active_connections -gt 100 ]
then
# Print appropriate message if active connections over 100
echo "High number of connections detected!"
echo
echo "Waiting 5 seconds before checking again"
# Wait 5 seconds before restarting the loop
sleep 5
else
echo
echo "Waiting 5 seconds before checking again"
sleep 5
fi
done
