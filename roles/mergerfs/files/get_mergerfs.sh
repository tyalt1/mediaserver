#!/bin/sh

# Clone repo
git clone https://github.com/trapexit/mergerfs.git /tmp/mergerfs

# Make debian package
make --directory=/tmp/mergerfs deb

# Install debian package
dpkg -i /tmp/mergerfs*.deb

# Remove files above commands generated
rm -rf /tmp/mergerfs*
