#!/bin/bash
set -euf -o pipefail

yum group install -y "Development Tools"
yum install -y protobuf-compiler make zlib-devel ncurses-devel openssl-devel protobuf-devel

cd /tmp || exit
git clone https://github.com/mobile-shell/mosh.git
cd mosh || exit
./autogen.sh
./configure
make
sudo make install

