#!/bin/bash

istioVer=1.8.2

cd
tar xf /resources/istio-$istioVer-linux-amd64.tar.gz
rm -f ~/bin/istioctl &> /dev/null
rm -f ~/istioctl.bash &> /dev/null
cp istio-$istioVer/bin/istioctl ~/bin/ &> /dev/null
cp istio-$istioVer/tools/istioctl.bash ~/ &> /dev/null
echo 'source ~/istioctl.bash' >> ~/.bashrc
source ~/.bashrc
cd - &>/dev/null
