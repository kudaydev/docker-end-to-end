# Install Docker on Ubuntu EC2
https://docs.docker.com/engine/install/ubuntu/#:~:text=and%20development%20environments.-,Install%20using%20the,repository,-Before%20you%20install
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# Install the Docker packages

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# check docker status

systemctl status docker
sudo service docker start

# Uninstall Docker Engine

# Uninstall the Docker Engine, CLI, containerd, and Docker Compose packages:

sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras

# Images, containers, volumes, or custom configuration files on your host aren't automatically removed. To delete all images, containers, and volumes:

sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

# Remove source list and keyrings

sudo rm /etc/apt/sources.list.d/docker.list
sudo rm /etc/apt/keyrings/docker.asc