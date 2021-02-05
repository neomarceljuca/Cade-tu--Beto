extends Area2D
var Beto
var emissor
var emissor_instance

func _ready():
	Beto = get_parent()
	emissor = load("res://Scenes/EmissorConfete.tscn")
	emissor_instance = emissor.instance()
	emissor_instance.set_name("MeuEmissor")
	
#func _input_event(viewport, event, shape_idx):
#	if event is InputEventMouseButton \
#	and event.button_index == BUTTON_LEFT \
#	and event.is_pressed():
#		self.on_click()

func on_click():
	print("Voce me achou!")
	get_tree().root.add_child(emissor_instance)
	emissor_instance.position.x = Beto.position.x
	emissor_instance.position.y = Beto.position.y
	emissor_instance.scale = Vector2(Beto.scale.x, Beto.scale.y)
	emissor_instance.restart()
	Beto.get_node("myAudioYay").play()
	Beto._randomPos()

