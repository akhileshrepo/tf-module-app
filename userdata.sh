#!/bin/bash
yum install ansible -y
ansible-pull -i localhost, -U https://github.com/akhileshrepo/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log


