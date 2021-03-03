extends RichTextLabel

var counter
var record
var save_path = "user://save.dat"
func _ready():
	counter = 0
	self.text = String(counter)
	loadRecord()
	
	
	

func incrementCounter():
	counter = counter + 1
	if counter > 999999:
		$youWon.play()
		counter = 0
	
	if counter > record:
		saveRecord(counter)
	
	
	self.text = String(counter)

func saveRecord(counter):
	var data = {
		"myRecord" : counter,
	}
	
	var file = File.new()
	var error = file.open(save_path, File.WRITE)
	if error ==  OK:
		file.store_var(data)
		file.close()
		record = counter

func loadRecord():
	var file = File.new()
	if file.file_exists(save_path):
		var error = file.open(save_path, File.READ)
		if error == OK:
			var playerData = file.get_var()
			record = playerData["myRecord"]
			file.close()
	else:
		record = 0
