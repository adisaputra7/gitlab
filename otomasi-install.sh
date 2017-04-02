#!/bin/sh

sudo apt-get update;
sudo apt-get install openssh-server curl ce-certificates;
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash;
sudo apt-get install gitlab-ce;
gitlab-ctl reconfigure;