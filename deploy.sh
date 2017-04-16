#!/bin/sh
#
# install script that runs on pi

for hostfile in $(ls host*.txt) ; do
	host=$(cat $hostfile)
	echo "-------------------- INSTALLING on $host -----------------"
	cat ~/.ssh/id_rsa.pub | ssh pi@$host 'cat >> .ssh/authorized_keys'
	scp install.sh pi@$host: 
	ssh pi@$host 'sh -x ~/install.sh'
done
