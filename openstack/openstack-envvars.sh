#!/bin/bash

touch ~/.openstack

cat << EOF > ~/.openstack
#!/bin/bash

export OS_AUTH_URL=http://10.30.220.30:5000/v2.0
export OS_TENANT_ID=968b6ec285f94394984a39e98c5897af
export OS_TENANT_NAME="dearin-homo"
export OS_USERNAME="mestevez"
export OS_PASSWORD=xxxxxxxxxxx

EOF

cat << EOF >> ~/.bashrc

. ~/.openstack

EOF

