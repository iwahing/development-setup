#!/bin/bash

command=$1
if [[ "$command" == "install" ]] 
then
    sudo apt update
    sudo apt install software-properties-common
    sudo add-apt-repository ppa:deadsnakes/ppa
    sudo apt update
    sudo apt install python3
else
    echo "No action for '$1'"
fi