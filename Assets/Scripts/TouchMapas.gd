extends TouchScreenButton

func _ready():
	pass

func _on_TouchMapas_released():
	get_node("SomClick").play()
	get_node("/root/Menu/menuHUD/MenuSelecaoMapa").visible = true
	get_node("/root").get_node("Menu/menuHUD/InitialMenu").visible = false
