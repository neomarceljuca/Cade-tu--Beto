extends TouchScreenButton

func _ready():
	pass # Replace with function body.

func _on_TButtonMap1_released():
	get_tree().change_scene("res://Scenes/Mapa1.tscn")
