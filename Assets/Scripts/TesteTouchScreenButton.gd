extends TouchScreenButton

var meuPai
var meuBotao
func _ready():
	meuPai = get_tree().root.get_node("Node2D/Beto")
	meuBotao = meuPai.get_node("Area2D")
	#set_global_position(Vector2(meuPai.position.x, meuPai.position.y))
	#self.scale = Vector2(meuPai.scale.x, meuPai.scale.y)
	

func _on_TesteTouchScreenButton_pressed():
	meuBotao.on_click()
	#set_global_position(Vector2(meuPai.position.x, meuPai.position.y))
	#self.scale = Vector2(meuPai.scale.x, meuPai.scale.y)
	#print(meuBotao)

