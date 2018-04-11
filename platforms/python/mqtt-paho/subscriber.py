#!/usr/bin/env python
# -*- coding: utf-8 -*-

import paho.mqtt.client as mqtt
import json
		
class Subscriber(mqtt.Client):
	"""
	This class implements a basic MQTT subscriber
	by subclassing the class  mqtt.Client.
	It overrides the constructor and the methods: connect, on_connect, and on_message.
	"""
	
	MQTT_BROKER = "10.0.0.111"
	MQTT_PORT = 1883
	TOPIC = "home/#"
	
	def __init__(self):
		"""
		Creates a MQTT subscriber that listens to the topic "home/#".
		The subscriber uses WebSockets for receiving MQTT messages from the broker.
		"""
		super(Subscriber, self).__init__(transport="tcp")
		
	def connect(self):
		"""
		Connects to the MQTT broker that is running on the Raspberry Pi.
		"""
		super(Subscriber, self).connect(self.MQTT_BROKER, self.MQTT_PORT, 60)
		
	def on_connect(self, client, user_data, flasg, rc):
		"""
		This method is called once the subscriber is connected to the broker.
		"""
		client.subscribe(self.TOPIC) # Subscribe to topics that match "home/#".
	
	def on_message(self, client, user_data, msg):
		"""
		This method is called whenever the subscriber receives a message
		that matches the topic.
		"""
		print("topic: %s " % msg.topic)
		print("payload: %s" % msg.payload)
		data = json.loads(msg.payload)
		print(data)


subscriber = Subscriber()
subscriber.connect()
subscriber.loop_forever()
