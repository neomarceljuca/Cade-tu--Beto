extends Sprite


func _ready():
	pass 

func on_click():
	print("Voce me achou!")
	get_tree().change_scene("res://Scenes/MenuSelecaoMapa.tscn")


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()
