extends RichTextLabel

var counter

func _ready():
	counter = 0
	self.text = String(counter)

func incrementCounter():
	counter = counter + 1
	if counter > 9999:
		$youWon.play()
		counter = 0
	
	self.text = String(counter)
