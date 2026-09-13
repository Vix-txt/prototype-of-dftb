extends Node2D
@onready var battlemanager:= $"../BattleManager"
@onready var enemy:= %"enemy"
var health:= 120
var max_health:= 120
var damage:= 20


func take_damage(amount):
	if battlemanager.dead == false:	
		health -= amount

func heal():
	if battlemanager.dead != true:
		if health+25 < max_health and battlemanager.turn == "player":
			health += 25
			print("Player health: ", health)
		elif health+25 >= max_health:
			print("Cannot heal, player health: ", health)
		elif battlemanager.turn != "player":
			print("Cannot heal, not your turn.")
		
		battlemanager.turn = "enemy"
		battlemanager.enemyattack()
