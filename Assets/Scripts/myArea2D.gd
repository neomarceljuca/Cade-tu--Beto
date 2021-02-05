extends Area2D
var Beto


func _ready():
	 Beto = get_parent()

#func _input_event(viewport, event, shape_idx):
#	if event is InputEventMouseButton \
#	and event.button_index == BUTTON_LEFT \
#	and event.is_pressed():
#		self.on_click()

func on_click():
	print("Voce me achou!")
	var emissor = load("res://Scenes/EmissorConfete.tscn")
	var emissor_instance = emissor.instance()
	emissor_instance.set_name("emissorOld")
	get_tree().root.add_child(emissor_instance)
	emissor_instance.position.x = Beto.position.x
	emissor_instance.position.y = Beto.position.y
	
	emissor_instance.restart()
	
	Beto.get_node("myAudioYay").play()
	Beto._randomPos()
	get_tree().root.get_node("emissorOld").queue_free()
