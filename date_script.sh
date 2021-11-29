#!/bin/bash
#this is a test script
#echo "Current time is (with 1 minute accuracy): "
date '+%F %T' > /var/www/site1/now.txt
cat /var/www/site1/now.txt
