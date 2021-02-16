extends Area2D
var Beto
var emissor
var emissor_instance
var placar

func _ready():
	Beto = get_parent()
	emissor = load("res://Scenes/EmissorConfete.tscn")
	emissor_instance = emissor.instance()
	emissor_instance.set_name("MeuEmissor")
	get_tree().root.add_child(emissor_instance)
	placar = get_tree().root.get_node("Node2D/Display/CanvasLayer/Placar")

func on_click():
	emissor_instance.position.x = Beto.position.x
	emissor_instance.position.y = Beto.position.y
	emissor_instance.scale = Vector2(Beto.scale.x, Beto.scale.y)
	emissor_instance.restart()
	Beto.get_node("myAudioYay").play()
	placar.incrementCounter()
	Beto._randomPos()

