extends TouchScreenButton

func _ready():
	pass # Replace with function body.


func _on_TouchCreditos_released():
	get_node("SomClick").play()
	get_node("/root").get_node("Menu/InitialMenu").visible = false
	get_node("/root/Menu/Creditos").visible = true
