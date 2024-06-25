#!/bin/bash

# search log file for all lines containing faxxter.com
# cut first part to first ' ' - this is the IP address
# only keep unique addresses
# wordcount the lines

grep 'faxxter.com' /var/log/apache2/access.log | cut -d' ' -f1 | uniq | wc -l
