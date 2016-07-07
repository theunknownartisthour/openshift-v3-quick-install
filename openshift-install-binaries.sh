mkdir /opt/openshift-origin-v1.3
chmod 755 /opt /opt/openshift-origin-v1.3
cd /opt/openshift-origin-v1.3
wget https://github.com/openshift/origin/releases/download/v1.3.0-alpha.2/openshift-origin-server-v1.3.0-alpha.2-983578e-linux-64bit.tar.gz
tar -zxvf openshift-origin-server-*.tar.gz --strip-components 1
rm -f openshift-origin-server-*.tar.gz