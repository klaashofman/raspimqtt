import paho.mqtt.client as mqtt
import time

client = mqtt.Client()
client.connect("iot.eclipse.org", 1883, 60)

while True:
    mypayload = time.strftime("%I:%M:%S")
    client.publish("mydata", mypayload)
    time.sleep(10)

client.disconnect()
