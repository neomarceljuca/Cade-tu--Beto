extends TouchScreenButton

func _ready():
	pass

func _on_ReturnButton2_released():
	get_node("SomClick").play()
	get_node("/root").get_node("Menu/menuHUD/InitialMenu").visible = true
	get_parent().get_parent().visible = false
