#!/bin/bash
set -euf -o pipefail

sudo apt update
sudo apt -y install automake libtool g++ protobuf-compiler libprotobuf-dev libboost-dev libutempter-dev libncurses5-dev zlib1g-dev libio-pty-perl libssl-dev pkg-config git make

cd /tmp || exit
git clone https://github.com/mobile-shell/mosh.git
cd mosh || exit
./autogen.sh
./configure
make
sudo make install

