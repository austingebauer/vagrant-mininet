#!/bin/bash

MININET_VERSION="2.3.0"

sudo apt-get update
sudo apt-get install -y python3 python-is-python3 unzip net-tools
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
git clone https://github.com/mininet/mininet
(cd mininet && git checkout $MININET_VERSION)
sed -i 's/cgroup-bin/cgroup-tools/g' mininet/util/install.sh
mininet/util/install.sh -a
