extends Node2D
@onready var player:= %"player"
@onready var enemy:= %"enemy"
@onready var battletext:= $battletext
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
				battletext.display("Enemy health: ", enemy.health)
			if dead == false:
				turn = "enemy"
				death()
				enemyattack()
func enemyattack():
	await get_tree().create_timer(1.5).timeout
	if dead == false:	
		if turn == "enemy":
			player.take_damage(enemy.damage)
			if player.health > 0:	
				battletext.display("Player health: ", player.health)
			turn = "player"
			death()

func death():
	if player.health <= 0:
		battletext.display("Player has died.")
		dead = true
	if enemy.health <= 0:
		battletext.display("Enemy has died.")
		dead = true
