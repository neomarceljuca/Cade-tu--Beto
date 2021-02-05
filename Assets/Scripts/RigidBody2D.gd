extends RigidBody2D

signal alterZoom

func _ready():
	pass

func _on_RigidBody2D_input_event(viewport, event, shape_idx):
	if  event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
			print("lol it works")
			emit_signal("alterZoom")
