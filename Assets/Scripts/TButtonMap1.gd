extends TouchScreenButton

func _ready():
	pass

func _on_TButtonMap1_released():
	get_tree().change_scene("res://Scenes/Mapa1.tscn")
