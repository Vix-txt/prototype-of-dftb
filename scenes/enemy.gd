extends Node2D

@onready var battlemanager:= $"../BattleManager"
var health:= 120
var max_health:= 120
var damage:= 20

func take_damage(amount):
	if battlemanager.dead == false:
		health -= amount	
