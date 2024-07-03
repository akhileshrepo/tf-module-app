#!/bin/bash

yum install python3.12-pip.noarch -y &>>/opt/userdata.log
pip3.12 install botocore boto3 &>>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/akhileshrepo/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log