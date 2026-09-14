extends Button

@onready var player = $"../../../player"
var times_pressed:= 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func check_heal_press():
	if times_pressed > 5:
		print("Cannot heal anymore.")

func _on_pressed():
	if times_pressed <= 5:	
		player.heal()
		times_pressed += 1
		check_heal_press()
	
