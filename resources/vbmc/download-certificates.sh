mkdir -p /etc/pf9/certs/libvirt/
cd /etc/pf9/certs/libvirt/
wget https://artifactory.platform9.horse/artifactory/pf9-bins/ironic/df-us-mpt1-kvm/certs/v2/ca/cert.pem -0 cacert.pem
wget https://artifactory.platform9.horse/artifactory/pf9-bins/ironic/df-us-mpt1-kvm/certs/v2/hostagent/cert.pem -0 clientcert.pem
wget https://artifactory.platform9.horse/artifactory/pf9-bins/ironic/df-us-mpt1-kvm/certs/v2/hostagent/key.pem -0 clientkey.pem
