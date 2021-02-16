extends TouchScreenButton

func _ready():
	pass # Replace with function body.

func _on_Return_Button_released():
	get_node("SomClick").play()
	get_node("/root").get_node("Menu/InitialMenu").visible = true
	get_parent().visible = false
