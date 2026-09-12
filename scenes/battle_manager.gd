extends Node2D

@onready var player:= $"../player"
@onready var enemy:= $"../enemy"
var turn:= "player"

func _input(event):
	if event.is_action_pressed("attack"):
		if turn == "player":
			playerattack()


func playerattack():
	if turn == "player":
		enemy.take_damage(player.damage)
		if enemy.health > 0:
			print("Enemy health: ", enemy.health)
		turn = "enemy"
		enemyattack()
		death()
func enemyattack():
	if turn == "enemy":
		player.take_damage(enemy.damage)
		if player.health > 0:	
			print("Player health: ", player.health)
		turn = "player"

func death():
	if player.health <= 0:
		print("Player has died.")
	if enemy.health <= 0:
		print("Enemy has died.")
