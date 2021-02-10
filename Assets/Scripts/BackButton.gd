extends Sprite


func _ready():
	pass 

func on_click():
	get_tree().change_scene("res://Scenes/Menu.tscn")


func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.is_pressed():
		self.on_click()
