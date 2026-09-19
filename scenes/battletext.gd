extends Label

func display(text1 = "", text2 = "") -> void:
	self.visible = true
	self.text = str(text1) + str(text2)
	await get_tree().create_timer(1).timeout
	self.visible = false
