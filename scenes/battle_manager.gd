extends Node2D

@onready var player:= %"player"
@onready var enemy:= %"enemy"
var turn:= "player"
var dead:= false

func _input(event):
	if dead == false:
		if event.is_action_pressed("attack"):
			if turn == "player":
				playerattack()


func playerattack():
	if dead == false:
		if turn == "player":
			enemy.take_damage(player.damage)
			if enemy.health > 0:	
				print("Enemy health: ", enemy.health)
			death()

			if dead == false:
				turn = "enemy"
				enemyattack()
func enemyattack():
	if dead == false:	
		if turn == "enemy":
			player.take_damage(enemy.damage)
			if player.health > 0:	
				print("Player health: ", player.health)
			turn = "player"

func death():
	if player.health <= 0:
		print("Player has died.")
		dead = true
	if enemy.health <= 0:
		print("Enemy has died.")
		dead = true
