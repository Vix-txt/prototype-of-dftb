extends Node2D
@onready var battlemanager:= $"../BattleManager"
@onready var enemy:= %"enemy"
@onready var healbttn:= $"../BattleUI/Control/HealButton"
var health:= 120
var max_health:= 120
var damage:= 20
var healed:= 0


func take_damage(amount):
	if battlemanager.dead == false:	
		health -= amount

func heal():
	if battlemanager.dead != true:
		if health + 25 < max_health and battlemanager.turn == "player":
			health += 25
			print("Player health : ", health)
			healed += 1
		if health + 25 > max_health and battlemanager.turn == "player":
			health = max_health
			print("Player is at max health! : ", health)
			healed += 1
		elif battlemanager.turn != "player":
			print("Cannot heal, not your turn.")
		
		battlemanager.turn = "enemy"
		battlemanager.enemyattack()
		

func check_heal_press():
	if healed >= 5:
		print("Cannot heal anymore, used all heals.")
		battlemanager.turn = "enemy"
		battlemanager.enemyattack()
