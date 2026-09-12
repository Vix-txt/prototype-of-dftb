extends Node2D

var health:= 120
var max_health:= 120
var damage:= 20

func take_damage(amount):
	health -= amount	
