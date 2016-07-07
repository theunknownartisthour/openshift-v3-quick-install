./openshift start --write-config=openshift.local.config
chmod +r $OPENSHIFT/openshift.local.config/master/admin.kubeconfig
chmod +r $OPENSHIFT/openshift.local.config/master/openshift-registry.kubeconfig
chmod +r $OPENSHIFT/openshift.local.config/master/openshift-router.kubeconfig

#Instead we'll take note of https://developers.redhat.com/blog/2015/11/19/dns-your-openshift-v3-cluster/
#sed -i 's/router.default.svc.cluster.local/apps.example.com/' \
# $OPENSHIFT/openshift.local.config/master/master-config.yaml

#https://developers.redhat.com/blog/2015/11/19/dns-your-openshift-v3-cluster/
sed -i 's/bindAddress: 0.0.0.0:53/bindAddress: 127.0.0.1:8053/' \
  $OPENSHIFT/openshift.local.config/master/master-config.yaml