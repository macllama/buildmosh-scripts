#!/bin/bash
set -euf -o pipefail

zypper install -y --type pattern devel_C_C++
zypper install -y make zlib-devel ncurses-devel protobuf-devel git libopenssl-devel

cd /tmp || exit
git clone https://github.com/mobile-shell/mosh.git
cd mosh || exit
./autogen.sh
./configure
make
sudo make install

