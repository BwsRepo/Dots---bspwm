#!/bin/bash

#Total RAM USAGE
TOTAL_RAM=`free -m | awk '{print $2}'| head -2 | tail -1`
 
#FRE RAM USAGE
FREE_RAM=`free -m | awk '{print $4}'| head -3| tail -1`
 
#expr $FREE_RAM - $TOTAL_RAM
FREE_PERCENT=$(( 100*FREE_RAM / TOTAL_RAM ))
USED_PERCENT=$(( 100-$FREE_PERCENT))
echo $USED_PERCENT