#!/bin/bash
#Server name
server_name=$(hostname)
# Function to return current memory usage
function memory_check(){
    echo "The current memory usage on ${server_name} is: " free -h
}
# Function to check CPU load
function cpu_check(){
    echo "The current CPU load on ${server_name} is: " uptime
}
# Function to return current number of TCP connections
function tcp_check(){
    echo "The current TCP connections on ${server_name} is: " cat /proc/net/tcp | wc -l
}
# Function to return kernel version
function kernel_version(){
    echo "The current kernel version on ${server_name} is: " uname -r
}
