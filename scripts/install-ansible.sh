#!/bin/sh

# Populate /etc/hosts
cat >> /etc/hosts <<EOF
192.168.100.11 m1.stone m1
192.168.100.12 m2.stone m2
192.168.100.13 m3.stone m3
192.168.100.21 m4.stone m4
192.168.100.22 m5.stone m5
192.168.100.23 m6.stone m6
EOF

# Install EPEL
yum install -y epel-release

# Install ansible and Git
yum install ansible git -y
