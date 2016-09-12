# Add Release Key for Ceph
wget -q -O- 'https://download.ceph.com/keys/release.asc' | sudo apt-key add -

# Add Autobuild Key for Ceph
wget -q -O- 'https://download.ceph.com/keys/autobuild.asc' | sudo apt-key add -

# Add APT repo for Ceph
sudo apt-add-repository 'deb https://download.ceph.com/debian-hammer/ trusty main'

# Finally grab and install Admin Node
echo deb https://download.ceph.com/debian-hammer/ $(lsb_release -sc) main | sudo tee /etc/apt/sources.list.d/ceph.list

# Update Repo and install Ceph-deploy
sudo apt-get update && sudo apt-get install ceph-deploy -y
