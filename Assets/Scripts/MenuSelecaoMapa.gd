extends Control
var player_vars

func _ready():
	player_vars = AudioStreamPlayer2D.new()
	player_vars.stream = load("res://Assets/Sound/TrilhaInicial.wav")
	add_child(player_vars)
