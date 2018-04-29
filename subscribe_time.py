import paho.mqtt.client as mqtt
import time

def on_message(client, userdata, message):
    print message.payload

client = mqtt.Client()
client.connect("pi2.local", 1883, 60)
client.subscribe("mydataklaas")

client.on_message = on_message
print("waiting....")
client.loop_forever()
