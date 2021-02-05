extends Node2D

var time = 0
var screen
var rng = RandomNumberGenerator.new()
var myAlpha 
var meuBotao

func _ready():
	#setup
	meuBotao = get_tree().get_root().get_child(1).get_node("hud/TesteTouchScreenButton")
	rng.randomize()
	screen = get_viewport().size
	_randomPos()


func _physics_process(delta):
	time += delta
	myAlpha  = sin(time * 1)
	
	
	$Sprite.modulate = Color($Sprite.modulate.r, $Sprite.modulate.g, $Sprite.modulate.b, myAlpha/ 4.0) 
	
	if Input.is_action_just_pressed("ui_accept"):
		_hint()

func _hint():
	pass
	var myNumber = rng.randi_range(1, 3)
	match myNumber:
		1:
			print("Red")
			_piscar(1,0,0)
		2:
			print("Green")
			_piscar(0,1,0)
		3:
			print("Blue")
			_piscar(0,0,1)

func _piscar(r,g,b):
	$Sprite.modulate = Color(r, g, b, $Sprite.modulate.a) 	

func _randomPos():
	time = 0
	set_global_position(Vector2(rng.randi_range(184, screen.x -200) , rng.randi_range(180, screen.y -50) ))
	var myScale = rng.randf_range(0.15,1.25)
	self.scale = Vector2(myScale,myScale)
	meuBotao.set_global_position(Vector2(position.x, position.y))
	meuBotao.scale = Vector2(scale.x, scale.y)
	
	
