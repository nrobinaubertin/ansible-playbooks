#!/bin/sh

### SYSTEM

#ansible-playbook system/static-ip.yml -i "$2," --extra-vars "host=all ip=$3"
#ansible-playbook system/centos.yml -i $2 --extra-vars "host=$1"
#ansible-playbook system/docker.yml -i $2 --extra-vars "host=$1"
#ansible-playbook system/restic.yml -i $2 --extra-vars "host=$1"

#ansible-playbook services/traefik.yml -i $2 --extra-vars "host=$1"

### WEBSITES

#ansible-playbook services/www.niels.fr.yml -i $2 --extra-vars "host=$1"
#ansible-playbook services/elzire.fr.yml -i $2 --extra-vars "host=$1"
#ansible-playbook services/zus.am.yml -i $2 --extra-vars "host=$1"
#ansible-playbook services/wordpress.yml -i $2 --extra-vars "host=$1 wordpress_domain=moodevie.com"
#ansible-playbook services/wordpress.yml -i $2 --extra-vars "host=$1 wordpress_domain=liqin.wang"
#ansible-playbook services/wordpress.yml -i $2 --extra-vars "host=$1 wordpress_domain=itb.liqin.wang"

### SERVICES

ansible-playbook services/alltube.yml -i $2 --extra-vars "host=$1"
ansible-playbook services/cryptpad.yml -i $2 --extra-vars "host=$1"
ansible-playbook services/etherpad.yml -i $2 --extra-vars "host=$1"
ansible-playbook services/firefox_syncserver.yml -i $2 --extra-vars "host=$1"
ansible-playbook services/glances.yml -i $2 --extra-vars "host=$1"
ansible-playbook services/privatebin.yml -i $2 --extra-vars "host=$1"
ansible-playbook services/send.yml -i $2 --extra-vars "host=$1"
ansible-playbook services/wallabag.yml -i $2 --extra-vars "host=$1"
ansible-playbook services/kanboard.yml -i $2 --extra-vars "host=$1"
#ansible-playbook services/prosody.yml -i $2 --extra-vars "host=$1"
ansible-playbook services/freshrss.yml -i $2 --extra-vars "host=$1"

### CLEAN
ansible-playbook system/clean.yml -i $2 --extra-vars "host=$1"
