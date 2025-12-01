CMPT 280 Project - Malware Attack
Dirk Wimbleton
Abdulmajeed
Shweta


DOCKER SETUP - Containerize The Program #If Docker is installed, proceed to RUNNING DOCKER
Isolate the program and it's associated files to ensure no actual files are affected

Following instructions are summarized from https://docs.docker.com/engine/install/
1 - Uninstall any unofficial packages
  $ sudo apt remove $(dpkg --get-selections docker.io docker-compose docker-compose-v2 docker-doc podman-docker containerd runc | cut -f1)
2 - Set up docker's apt repository
  # Add Docker's official GPG key:
  sudo apt update
  sudo apt install ca-certificates curl
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
  sudo chmod a+r /etc/apt/keyrings/docker.asc

  # Add the repository to Apt sources:
  sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
  Types: deb
  URIs: https://download.docker.com/linux/ubuntu
  Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
  Components: stable
  Signed-By: /etc/apt/keyrings/docker.asc
  EOF

  sudo apt update

3 - Install docker packages
  $ sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

4 - Confirm docker is running
  sudo systemctl status docker
  (If manual start is needed: sudo systemctl start docker)

5 - Verify succesful install
  sudo docker run hello-world
  (This should make a container, download & run a test image, print a confirm message and exit)

RUNNING DOCKER
1 - Navigate to location of Dockerfile (there is one included in this repo)
2 - Build the docker image
  docker build -t cmpt280-proj .

3 - Run the docker image
  docker run -d -p 9090:80 --name malwaretest cmpt280-proj
    
