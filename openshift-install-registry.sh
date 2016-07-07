mkdir /opt/openshift-registry
chcon -Rt svirt_sandbox_file_t /opt/openshift-registry
chown 1001.root /opt/openshift-registry
oadm policy add-scc-to-user privileged -z registry 
oadm registry --service-account=registry --mount-host=/opt/openshift-registry