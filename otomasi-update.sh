#!/bin/sh

sudo apt-get update -y && sudo apt-get upgrade -y;
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash;
sudo apt-get install gitlab-ce;
gitlab-ctl reconfigure;