#!/bin/bash

command=$1
if [[ "$command" == "install" ]] || [[ "$command" == "update" ]]
then

    echo "############## ${command^} ##############"

    VERSION=$(curl https://go.dev/VERSION?m=text)

    wget "https://dl.google.com/go/$VERSION.linux-amd64.tar.gz"

    sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf ${VERSION}.linux-amd64.tar.gz

    # WSL2
    echo export GOROOT="/usr/local/go" >> ~/.bashrc
    echo export GOPATH="\$HOME/go" >> ~/.bashrc
    echo export PATH="\$GOPATH/bin:\$GOROOT/bin:\$PATH" >> ~/.bashrc

    
    # Linux
    # echo export PATH="$PATH:/usr/local/go/bin" >> ~/.bashrc

    bash

    # Delete
    rm go*.linux-amd64.tar.gz*

    echo "############ COMPLETE ############"
else
    echo "No action for '$1'"
fi
