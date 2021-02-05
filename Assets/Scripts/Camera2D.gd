extends Camera2D
export var speed = 10.0
var i = Vector2(0.8,0.8)

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _process(delta):
	position.x = get_viewport().get_mouse_position().x
	position.y = get_viewport().get_mouse_position().y



func _on_RigidBody2D_alterZoom():
	zoom = i
	if i == Vector2(0.8,0.8):
		i = Vector2(1,1)
	else:
		i = Vector2(0.8,0.8)
