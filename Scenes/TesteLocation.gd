extends Control

var minhaExtremidade

func _ready():
	minhaExtremidade = get_parent().get_node("TesteTouchScreenButton").global_position
	set_process(true)
	
func _physics_process(delta):
	minhaExtremidade = get_parent().get_node("TesteTouchScreenButton").global_position
	update()

func _draw():
	draw_line(Vector2(780,360), Vector2(minhaExtremidade.x, minhaExtremidade.y), Color(255, 0, 0), 5)
