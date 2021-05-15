#!/bin/bash
netstat -plant | grep '80\|443' | grep -v LISTEN | wc -l
