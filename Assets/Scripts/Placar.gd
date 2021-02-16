extends RichTextLabel

var counter

func _ready():
	counter = 0
	self.text = String(counter)

func incrementCounter():
	counter = counter + 1
	self.text = String(counter)
