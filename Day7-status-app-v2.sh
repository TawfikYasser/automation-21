#!/bin/bash
#Server name
server_name=$(hostname)
# Color Variables
green='\e[32m'
blue='\e[34m'
clear='\e[0m'
# Function to return current memory usage
function memory_check(){
    echo ""
        echo "Memory usage on ${server_name} is: "
        free -h
        echo ""
}
# Function to check CPU load
function cpu_check(){
    echo ""
        echo "CPU load on ${server_name} is: "
    echo ""
        uptime
    echo ""
}
# Function to return current number of TCP connections
function tcp_check(){
    echo ""
        echo "TCP connections on ${server_name}: "
    echo ""
        cat /proc/net/tcp | wc -l
    echo ""
}
# Function to return kernel version
function kernel_version(){
    echo ""
        echo "Kernel version on ${server_name} is: "
    echo ""
        uname -r
    echo ""
}
# Color Functions
ColorGreen(){
    echo -ne $green$1$clear
}
ColorBlue(){
    echo -ne $blue$1$clear
}
# All checks
function check_all(){
    memory_check
    cpu_check
    tcp_check
    kernel_version
}

# Main menu

menu(){
    echo -ne "
    
    Welcome to Bash Menu
    $(ColorGreen '1)') Memory Usage.
    $(ColorGreen '2)') CPU Load.
    $(ColorGreen '3)') TCP Connections.
    $(ColorGreen '4)') Kernel Version.
    $(ColorGreen '5)') Check All.
    $(ColorGreen '0)') Exit.
    $(ColorBlue 'Choose an option:') "
    read a
    case $a in
            1) memory_check ; menu ;;
            2) cpu_check ; menu ;;
            3) tcp_check ; menu ;;
            4) kernel_version ; menu ;;
            5) check_all ; menu ;;
                    0) exit 0 ;;
                    *) echo -e $red"Wrong option!"$clear;
    WrongCommand;;
            esac
}

# Call the menu
menu
