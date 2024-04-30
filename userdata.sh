#!/bin/bash
labauto ansible
ansible-pull -i localhost, -U https://github.com/raghudevopsb74/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log


