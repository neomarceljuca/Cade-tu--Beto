extends TouchScreenButton
var rng = RandomNumberGenerator.new()

func _ready():
	pass

func _sortearMapa():
	rng.randomize()
	var myNumber = rng.randi_range(1,5)	
	
	match myNumber:
		1:
			return "res://Scenes/Mapa1.tscn"
		2:
			return "res://Scenes/Mapa2.tscn"
		3:
			return "res://Scenes/Mapa3.tscn"
		4:
			return "res://Scenes/Mapa4.tscn"
		5:
			return "res://Scenes/Mapa5.tscn"

func _on_TRandMap_released():
	get_tree().change_scene(_sortearMapa())
