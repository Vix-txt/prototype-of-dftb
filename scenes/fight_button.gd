extends Button

@onready var battlemanager:= $"../../../BattleManager"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func attack():
	battlemanager.playerattack()

func _on_pressed() -> void:
	attack()
