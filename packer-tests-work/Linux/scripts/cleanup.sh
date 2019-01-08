#!/usr/bin/env bash
set -x

sudo yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts
sudo rpm --rebuilddb
sudo yum -y clean all
