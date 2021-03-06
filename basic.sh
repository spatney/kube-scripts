apt-get update && apt-get install -y apt-transport-https
curl -s https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update && apt install -qy docker-ce
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" \
    > /etc/apt/sources.list.d/kubernetes.list
apt-get update && apt-get install -y kubeadm kubelet kubectl

sed -e '/swap/ s/^#*/#/' -i /etc/fstab
