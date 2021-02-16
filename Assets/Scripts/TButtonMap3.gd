extends TouchScreenButton

func _ready():
	pass 

func _on_TButtonMap3_released():
	get_tree().change_scene("res://Scenes/Mapa3.tscn")
