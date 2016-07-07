# openshift-v3-quick-install

# Add quick install
```
mkdir /opt/openshift-v3-quick-install
chmod 755 /opt /opt/openshift-v3-quick-install
cd /opt/openshift-v3-quick-install
wget https://github.com/theunknownartisthour/openshift-v3-quick-install/archive/v0.1.0-alpha.1.tar.gz
tar -zxvf v0.1.0-*.tar.gz --strip-components 1
rm -f v0.1.0-*.tar.gz

#add to path
export OPENSHIFT_QUICK_INSTALL_DIR=/opt/openshift-v3-quick-install
export PATH=/opt/openshift-v3-quick-install:$PATH

#chmod the executables
find $OPENSHIFT_QUICK_INSTALL_DIR -type f -exec chmod 755 {} \;
```

Order of Operations 
( for help look at http://sudhaker.com/10/install-the-latest-openshift-v3-on-centos-7-1 and https://developers.redhat.com/blog/2015/11/19/dns-your-openshift-v3-cluster/ )

**Setup Docker**
```bash
docker-install.sh
docker-override.sh
docker-start-service.sh
```
**Setup Openshift**
```bash
openshift-install-binaries.sh
openshift-set-env.sh
openshift-generate-config.sh
openshift-open-firewall.sh
```
**Install As Service**
```bash
openshift-install-service.sh
```
**TODO**
dnsmasq external routing

**Launch Service**
```bash
openshift-start-service.sh
```
**Add Admin Account**
```
openshift-create-admin-account.sh
```

**Install Router**
```
openshift-install-router.sh
```

**Add Images**
```
openshift-install-default-images.sh
```
