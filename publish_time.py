#
# simple mqtt pusblish example
# more info:
# https://github.com/eclipse/paho.mqtt.python
#

import paho.mqtt.client as mqtt
import time

client = mqtt.Client()
client.connect("iot.eclipse.org", 1883, 60)

while True:
    mypayload = time.strftime("%I:%M:%S")
    client.publish("mydataklaas", mypayload)
    time.sleep(1)

client.disconnect()
