#!/bin/bash

git clone https://github.com/rvaiya/keyd
cd keyd
make && sudo make install
sudo systemctl enable --now keyd

sudo tee /etc/keyd/default.conf <<'EOF'
[ids]
*

[main]
capslock = leftcontrol
muhenkan = leftmeta
EOF
sudo systemctl enable --now keyd
sudo keyd reload

