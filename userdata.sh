#!/bin/bash
dnf install python3.12-pip ansible -y | tee -a /opt/userdata.log
pip3.12 install boto3 botocore | tee -a /opt/userdata.log
ansible-pull -i localhost, -U https://github.com/akhileshrepo/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log