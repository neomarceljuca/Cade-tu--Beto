extends Button

func _ready():
	pass



func _on_Button_button_up():
	print("oh yes")
	get_node("SomDeClick").play()
