# Add Release Key for Ceph
wget -q -O- 'https://download.ceph.com/keys/release.asc' | sudo apt-key add -

# Add Autobuild Key for Ceph
wget -q -O- 'https://download.ceph.com/keys/autobuild.asc' | sudo apt-key add -

# Add APT repo for Ceph
sudo apt-add-repository 'deb https://download.ceph.com/debian-hammer/ trusty main'

# Add Ceph Deployment User
sudo useradd -d /home/cephdeployuser -m cephdeployuser
sudo passwd cephdeployuser
echo "cephdeployuser ALL = (root) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/cephdeployuser
sudo chmod 0440 /etc/sudoers.d/cephdeployuser
