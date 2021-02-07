extends Control
var player_vars

func _ready():
	player_vars = AudioStreamPlayer2D.new()
	player_vars.stream = load("res://Assets/Sound/TrilhaInicial.wav")
	player_vars.playing = true
	
	add_child(player_vars)
