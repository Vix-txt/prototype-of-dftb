extends Button

@onready var player = $"../../../player"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_pressed():
	player.check_heal_press()
	if player.healed < 5:	
		player.heal()
		
