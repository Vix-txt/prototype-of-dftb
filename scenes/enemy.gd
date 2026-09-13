extends Node2D

@onready var bttlmng:= $"../BattleManager"
var health:= 120
var max_health:= 120
var damage:= 20

func take_damage(amount):
	if bttlmng.dead == false:
		health -= amount	
