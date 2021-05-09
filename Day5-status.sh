#!/bin/bash
# Not completed yet
netstat -plant | grep '80\|443' | grep -v LISTEN | wc -l
