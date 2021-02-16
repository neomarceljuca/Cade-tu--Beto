extends TouchScreenButton

func _ready():
	pass

func _on_TouchCreditos_released():
	get_node("SomClick").play()
	get_node("/root/Menu/menuHUD/Creditos").visible = true
	get_node("/root").get_node("Menu/menuHUD/InitialMenu").visible = false
