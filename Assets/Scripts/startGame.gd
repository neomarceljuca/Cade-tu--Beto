extends TouchScreenButton

func _ready():
	pass 

func _on_startGame_released():
	get_tree().root.get_node("Node2D/Beto").visible = true
	get_tree().root.get_node("Node2D/Aviso").queue_free()
	#get_tree().root.get_node("Node2D/Aviso").visible = false
