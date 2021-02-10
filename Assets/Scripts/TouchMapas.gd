extends TouchScreenButton

func _ready():
	pass

func _on_TouchMapas_released():
	get_node("SomClick").play()
	get_node("/root").get_node("Menu/InitialMenu").visible = false
	get_node("/root/Menu/MenuSelecaoMapa").visible = true
