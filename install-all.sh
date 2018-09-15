#!/bin/sh

ansible-playbook system/static-ip.yml -i "$1," --extra-vars "host=all ip=$2"
ansible-playbook system/centos.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook system/docker.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook system/restic.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook system/traefik.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/alltube.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/cryptpad.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/etherpad.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/firefox_syncserver.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/lutim.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/privatebin.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/prosody.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/radicale.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/send.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/wallabag.yml -i inventory.yml --extra-vars "host=ao"
ansible-playbook services/www.yml -i inventory.yml --extra-vars "host=ao"
