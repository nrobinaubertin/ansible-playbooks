#!/bin/sh

#ansible-playbook system/static-ip.yml -i "$2," --extra-vars "host=all ip=$3"
#ansible-playbook system/centos.yml -i inventory.yml --extra-vars "host=$1"
#ansible-playbook system/docker.yml -i inventory.yml --extra-vars "host=$1"
#ansible-playbook system/restic.yml -i inventory.yml --extra-vars "host=$1"
#ansible-playbook system/traefik.yml -i inventory.yml --extra-vars "host=$1"

### SERVICES

ansible-playbook services/alltube.yml -i inventory.yml --extra-vars "host=$1"
ansible-playbook services/cryptpad.yml -i inventory.yml --extra-vars "host=$1"
ansible-playbook services/etherpad.yml -i inventory.yml --extra-vars "host=$1"
ansible-playbook services/firefox_syncserver.yml -i inventory.yml --extra-vars "host=$1"
ansible-playbook services/glances.yml -i inventory.yml --extra-vars "host=$1"
ansible-playbook services/lutim.yml -i inventory.yml --extra-vars "host=$1"
ansible-playbook services/privatebin.yml -i inventory.yml --extra-vars "host=$1"
ansible-playbook services/radicale.yml -i inventory.yml --extra-vars "host=$1"
ansible-playbook services/send.yml -i inventory.yml --extra-vars "host=$1"
ansible-playbook services/wallabag.yml -i inventory.yml --extra-vars "host=$1"

### CLEAN
ansible-playbook system/clean.yml -i inventory.yml --extra-vars "host=$1"

### WEBSITES

#ansible-playbook services/www.yml -i inventory.yml --extra-vars "host=$1"
#ansible-playbook services/elzire.fr.yml -i inventory.yml --extra-vars "host=$1"
#ansible-playbook services/wordpress.yml -i inventory.yml --extra-vars "host=$1 wordpress_domain=moodevie.com"
