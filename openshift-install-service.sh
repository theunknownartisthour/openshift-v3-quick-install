cat > /etc/systemd/system/openshift-origin.service << '__EOF__'
[Unit]
Description=Origin Master Service
After=docker.service
Requires=docker.service
 
[Service]
Restart=always
RestartSec=10s
ExecStart=/opt/openshift-origin-v1.3/openshift start
WorkingDirectory=/opt/openshift-origin-v1.3
 
[Install]
WantedBy=multi-user.target
__EOF__