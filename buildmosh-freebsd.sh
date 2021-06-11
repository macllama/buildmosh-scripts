#!/bin/bash
set -euf -o pipefail

pkg install -y automake libtool git protobuf pkgconf

cd /tmp || exit
git clone https://github.com/mobile-shell/mosh.git
cd mosh || exit
./autogen.sh
./configure
make
sudo make install

