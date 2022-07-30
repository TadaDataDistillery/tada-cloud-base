#!/bin/bash
  # Debian / Ubuntu Linux
  sudo apt-get update
  sudo apt-get install -y python3-pip
  pip3 install --user boto3 awscli
  TF_VERSION=$(cat .terraform-version)

  sudo curl -o terraform_${TF_VERSION}_linux_amd64.zip https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip
  sudo unzip -o terraform_${TF_VERSION}_linux_amd64.zip -d /bin
  export PATH=$PATH:./bin/