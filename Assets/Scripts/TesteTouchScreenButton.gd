extends TouchScreenButton

var meuPai
var meuBotao


func _ready():
	meuPai = get_tree().root.get_node("Node2D/Beto")
	meuBotao = meuPai.get_node("Area2D")


func _on_TesteTouchScreenButton_pressed():
	meuBotao.on_click()


