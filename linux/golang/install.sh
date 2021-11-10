#/bin/bash

VERSION=1.17.2

# Download
wget https://golang.org/dl/go${VERSION}.linux-amd64.tar.gz

# Move
rm -rf /usr/local/go && tar -C /usr/local -xzf go${VERSION}.linux-amd64.tar.gz

# Set $PATH in .bashrc
echo export PATH="$PATH:/usr/local/go/bin" >> ~/.bashrc

# Delete
rm go${VERSION}.linux-amd64.tar.gz