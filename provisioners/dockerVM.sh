## Script Elaborado por John Tambi

#Instalacion de paquetes
sudo yum install -y epel-release && \
sudo yum install -y wget telnet git && \
sudo yum update -y

## Instalacion de Docker
sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

## Configuracion repositorio
sudo yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2 \
  sed \
  net-tools

## Repositorio Estable
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

## Instalacion de Docker Engine Community & containerd
sudo yum install -y docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker vagrant

## Start Docker
sudo systemctl start docker

## Verificar version Docker
docker version

