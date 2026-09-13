extends Node2D
@onready var battlemanager:= $"../BattleManager"
@onready var enemy:= %"enemy"
var health:= 120
var max_health:= 120
var damage:= 25


func take_damage(amount):
	if battlemanager.dead == false:	
		health -= amount

func heal():
	if battlemanager.dead != true:
		if health < 120 and battlemanager.turn == "player":
			health += 10
			print("Player health: ", health)
		elif health == 120:
			print("Cannot heal, player health: ", health)
		elif battlemanager.turn != "player":
			print("Cannot heal, not your turn.")
		
		battlemanager.turn = "enemy"
		battlemanager.enemyattack()
