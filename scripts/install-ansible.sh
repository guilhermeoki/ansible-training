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

# Install private key
cat >> /home/vagrant/.ssh/id_rsa <<EOF
-----BEGIN RSA PRIVATE KEY-----                     
MIIEowIBAAKCAQEAyr5Vha5KYIIsF54glMQThBkDovhegGJWJSa4RaZXPzHzZmIq                                         
/GhKGT9ULRCXkOS0m/T4JjpRmy5ABfZb5isE0TeQYXudKWfZSLdhg6eLcPPKRZg5                                         
p/zsBF1/bFdCAOFGZClPPJoQWUtxFq7D8moiWH8K5BCFw2JPn79769eO6db6LYMj                                         
2vmDfzdOc9bYwHJlldqnZRAgoe+4YOJY601N0GLKVkJm7L3MhgrtG0K3RsmZd6mx                                         
RGY1N4FaBZXC4ZZ+Vzm0buf7NmeIm58i9fd3wcfuNYrsXWHkGbNOhDSM9x5Qw/hj                                         
Kpngo5Rmi1clgEDzYjh6UZ38zEsgMq/zG8PnvQIDAQABAoIBABsTL/iaPfSFbb35                                         
sAAt7y1E6edpo7UhbL+pXBJxFFWsJgUWNwdeJgcZHfSmspb28+ef30O7pgpDMumY                                         
7MzgEdSexvk9uM8+vxWm567dQRHkfK6ulYSJkjtDATFGtdnIO85EdgBx0p0aJhAR                                         
ZrmI0u1eieXLDxH4nwmGWNY2Ay/W+M6WtQtgDcXGTeGhnOEip8IZGg70QNkwQqga                                         
JGC+Dj1csN53zU5zBmk7lCX5nPY0tXSskCaxpXh90/ItL5xqglwWJt4wwq4HNWBA                                         
zaNlGCjl2hRWEgKheFeUSzFjQMCrRH2URAt7sqz/tVWFDCGQQid6IW0xBxaixdTQ                                         
H75OC0ECgYEA7DEV/EUioQzxOY9fPEoZVK+fDarx+uZohNPzNl4fj1EyjeouPqGS                                         
I+wPjJcHQesmn2FM9yfAZGlqqrndHr/54rwdyzbC2O1OD1pjTURpXgZrlydMmybY                                         
Vfyt9CW/Ln5T1/W/IaPt/N12uYxl5BjYY+OIN5IgpC1CZwZ7BYgM9K8CgYEA278h                                         
sv2Wf/6OhAvLbZTIMQ2FMKhiA6SQNwzLM4yjtjTsbTyObk/XRm3uWXNzEL3eim1a                                         
Pu5DLaRW5+yuwr0pg4tqcyeKqoLX2mHQQTZjpFIeAgxd9MLWdJOGcSKZV84Vq49B                                         
KiIOsXFWPIVswtk9ZSXgNH5dZYBTPWWY8sVjXVMCgYEAg+7nWQNFVLDmDkEH8aVy                                         
gNuY/QmAIaaSu5+pO7VX67ZvhtZI/rNB7s7t4Jp8c1XnPSAc3fJWhcBc1QD9gy+5                                         
Ze2uttTgAkyMTgcvcPnF4b+0WbqaEBCix2VdxgNPx6jJLNkY6rGnPph2uS6zu7Yl                                         
KabvcBswIIUnkmUMUwqsMgECgYARMN+rCAmpE7oEfIO6m+QZakxcJSAd1tbtZ5PS                                         
AZOhInzIgu9Fk/tsaBc4aj67NY9eVvWzbKJWxL+Dv1FgrLm9r79xKMvBUSEf1X0c                                         
TOv4o+/zCxKinkd2sT/YQ/OpGdc6J6faavWpTguICowapjIWYqMqmCQoV6SrbfJM                                         
M8L1PwKBgCeM4/aNCdBSLPLvG3z+SnBqVvkfANnqK5YU0Z4mYFO4h+XXSCDw2Msg                                         
en+rL+HKrKVzTdyDDAIAMn2SBAL+8327YDBEEBpPJNNx3TlMASgaS1vFvvL0FV5K                                         
s48bQQnzIbsp+XpZhnVqKG8jOkEtSLIwjBt4mHiJegWo9HF8CXCo                                                     
-----END RSA PRIVATE KEY-----
EOF

# Set private key permission and owner
chown vagrant:vagrant /home/vagrant/.ssh/id_rsa
chmod 400 /home/vagrant/.ssh/id_rsa

# Install EPEL
yum install -y epel-release

# Install ansible and Git
yum install ansible git -y
