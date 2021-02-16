extends TouchScreenButton

func _ready():
	pass

func _on_TButtonMap2_released():
	get_tree().change_scene("res://Scenes/Mapa2.tscn")
