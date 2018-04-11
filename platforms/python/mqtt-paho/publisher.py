#!/usr/bin/env python
# -*- coding: utf-8 -*-

import paho.mqtt.client as mqtt
import time
from datetime import datetime
import json


class Publisher(mqtt.Client):
	"""
	This class implements a basic MQTT publisher
	by subclassing the class  mqtt.Client.
	It overrides the constructor and the method connect.
	"""
	
	MQTT_BROKER = "piserver.local"
	MQTT_PORT = 1883 #1884
	
	def __init__(self):
		"""
		Creates a MQTT publisher that uses WebSockets to send MQTT messages to the broker.
		"""
		super(Publisher, self).__init__(transport="tcp")
		
	def connect(self):
		"""
		Connects the publisher to the MQTT broker that is running on the Raspberry Pi.
		"""
		super(Publisher, self).connect(self.MQTT_BROKER, self.MQTT_PORT, 60)


publisher = Publisher()
publisher.connect()


while True:
	time.sleep(2)
	data = {
		'measurement': {
			'type': 'Temperature',
			'name': 'Temperature', 
			'unit': 'Celsius', 
			'value': 25.3,
			'dateTime': str(datetime.utcnow())
		} 
	}
	json_string = json.dumps(data)
	publisher.publish('home/kitchen/temperature', json_string)
	
