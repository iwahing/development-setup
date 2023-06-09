#!/bin/bash

command=$1
if [[ "$command" == "install" ]] || [[ "$command" == "update" ]]
then

    echo "############## ${command^} ##############"
    # https://pkg.go.dev/golang.org/x/tools/cmd/getgo#section-readme

    # Remove any existing golang package
    rm -rf /usr/local/go

    curl -LO https://get.golang.org/$(uname)/go_installer && chmod +x go_installer && ./go_installer && rm go_installer

    touch /root/.bash_profile
    echo "############ COMPLETE ############"
    ############### MANUAL WAY ####################
    # VERSION=1.20.5

    # # Download
    # wget "https://dl.google.com/go/$(curl https://go.dev/VERSION?m=text).linux-amd64.tar.gz"

    # Move
    # rm -rf /usr/local/go && tar -C /usr/local -xzf go${VERSION}.linux-amd64.tar.gz

    # # Set $PATH in .bashrc
    # echo export PATH="$PATH:/usr/local/go/bin" >> ~/.bashrc

    # # Delete
    # rm go${VERSION}.linux-amd64.tar.gz

    ############### MANUAL WAY ####################
else
    echo "No action for '$1'"
fi
