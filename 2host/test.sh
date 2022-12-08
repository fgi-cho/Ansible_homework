#!/bin/sh
Green='\033[0;32m'
Red='\033[0;31m'
echo -e "\n${Green}Starting VMs preparation\n"
/usr/bin/vagrant up

if [ $? == 0 ] ; then
  echo -e "\n${Green}VMs are up and running"
  sleep 5
  echo -e '\nStarting Ansible\n'
  echo -e '\033[0m'
 /usr/bin/ansible-playbook webservers.yml
else 
  echo -e '\n\${Red}nSomething goes wrong during VMs preparation\n'
  echo -e '\033[0m'

fi

