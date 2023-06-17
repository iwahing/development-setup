#!/bin/bash

command=$1
if [[ "$command" == "setup-bash-alias" ]] 
then
    cp .bash_aliases ~/.bash_aliases
    echo "if [ -e $HOME/.bash_aliases ]; then" >> ~/.bashrc
    echo "    source $HOME/.bash_aliases" >> ~/.bashrc
    echo "fi" >> ~/.bashrc

    cp .bash_functions ~/.bash_functions
    echo "if [ -e $HOME/.bash_functions  ]; then" >> ~/.bashrc
    echo "    source $HOME/.bash_functions " >> ~/.bashrc
    echo "fi" >> ~/.bashrc

    bash
# elif [[ "$command" == "" ]] 
# then 
#     echo "Hi"
else
    echo "Actions [setup-bash-alias]"
    echo "No action for '$1'"
fi