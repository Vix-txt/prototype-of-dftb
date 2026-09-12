extends Node2D

@onready var enemy:= $"../enemy"
var health:= 120
var max_health:= 120
var damage:= 25


func take_damage(amount):
	health -= amount
