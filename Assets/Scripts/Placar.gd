extends RichTextLabel

var counter

func _ready():
	counter = 0
	self.text = String(counter)

func incrementCounter():
	counter = counter + 1
	self.text = String(counter)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
