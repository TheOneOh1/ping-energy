#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'
FILE="./vm_hosts.txt"

trap "echo -e '\n${RED}Aborted by user.${NC}'; exit 130" SIGINT

function check_file(){
        if [[ ! -f "$FILE" ]]; then
                echo -e "-----------------------------------------"
                echo -e "Error: Hosts file '$FILE' not found."
                echo -e "-----------------------------------------"
                exit 1
        else
                echo -e "-----------------------------------------"
                echo -e "Host file found. Initiating check..."
                echo -e "-----------------------------------------"
                scan
        fi
}

function scan(){
        while read -r line;
        do
                if ping -c 2 -W 3 "$line" &>/dev/null; then
                        echo -e "${GREEN}✓${NC} ${GREEN}UP${NC}: $line"
                else
                        echo -e "${RED}✗${NC} ${RED}DOWN${NC}: $line"
                fi
        done< $FILE
}

check_file
