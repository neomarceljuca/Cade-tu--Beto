extends Button

func _ready():
	pass


func _on_Button_button_up():
	get_node("SomDeClick").play()
	get_node("/root/Menu/MenuSelecaoMapa").visible = true
	#get_tree().change_scene("res://Scenes/MenuSelecaoMapa.tscn")
	
