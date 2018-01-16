#!/bin/bash

cat >> /home/vagrant/.ssh/authorized_keys <<EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKvlWFrkpggiwXniCUxBOEGQOi+F6AYlYlJrhFplc/MfNmYir8aEoZP1QtEJeQ5LSb9PgmOlGbLkAF9lvmKwTRN5Bhe50pZ9lIt2GDp4tw88pFmDmn/OwEXX9sV0IA4UZkKU88mhBZS3EWrsPyaiJYfwrkEIXDYk+fv3vr147p1votgyPa+YN/N05z1tjAcmWV2qdlECCh77hg4ljrTU3QYspWQmbsvcyGCu0bQrdGyZl3qbFEZjU3gVoFlcLhln5XObRu5/s2Z4ibnyL193fBx+41iuxdYeQZs06ENIz3HlDD+GMqmeCjlGaLVyWAQPNiOHpRnfzMSyAyr/Mbw+e9 vagrant@bastion.stone
EOF

# Set public key permission and owner
chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys
chmod 600 /home/vagrant/.ssh/authorized_keys