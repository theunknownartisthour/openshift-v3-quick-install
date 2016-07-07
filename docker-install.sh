#http://sudhaker.com/10/install-the-latest-openshift-v3-on-centos-7-1
cat > /etc/yum.repos.d/docker.repo << '__EOF__'
[docker]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
__EOF__
 
yum -y install docker-engine wget git