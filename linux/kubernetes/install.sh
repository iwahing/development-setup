#/bin/bash

# Add dependencies for installation
sudo apt update
sudo apt install -y apt-transport-https gnupg2 curl

# Add GPG key
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Add repository
kube_repo="deb https://apt.kubernetes.io/ kubernetes-xenial main"
echo $kube_repo | sudo tee -a /etc/apt/sources.list.d/kubernetes.list

# Install kubernetes components
sudo apt update
sudo apt install -y kubectl kubelet kubeadm
kubectl version --client
kubelet --version

# Add auto-completion
if ! grep -q "source <(kubectl completion bash)" ~/.bashrc; then
  echo "source <(kubectl completion bash)" >>~/.bashrc
fi