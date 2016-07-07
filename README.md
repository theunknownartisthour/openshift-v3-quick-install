# openshift-v3-quick-install
Order of Operations 
( for help look at http://sudhaker.com/10/install-the-latest-openshift-v3-on-centos-7-1 and https://developers.redhat.com/blog/2015/11/19/dns-your-openshift-v3-cluster/ )

**Setup Docker**
docker-install.sh
docker-override.sh
docker-start-service.sh

**Setup Openshift**
openshift-install-binaries.sh
openshift-set-env.sh
openshift-generate-config.sh
openshift-open-firewall.sh

**Install As Service**
openshift-install-service.sh

TODO:
dnsmasq external routing

**Launch Service**
openshift-start-service.sh

**Add Admin Account**
openshift-create-admin-account.sh

**Install Router**
openshift-install-router.sh

**Add Images**
openshift-install-default-images.sh

