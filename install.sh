#!/bin/sh
# 
# install script ran on pi
cleanup(){
	cd ~
	sudo rm -rf paho.mqtt.python
	cd -
}


install_paho_mqtt(){
	git clone https://github.com/eclipse/paho.mqtt.python.git
	cd paho.mqtt.python
	sudo python setup.py install
}

cleanup
install_paho_mqtt
