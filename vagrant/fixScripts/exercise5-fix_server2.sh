#!/bin/bash
#add fix to exercise5-server2 here

# Need to generate authentication keys and take the public key form one sever and append it to authorized_keys

sudo ssh-keygen -t rsa

cat .ssh/id_rsa.pub | ssh server1 'cat >> .ssh/authorized_keys'
