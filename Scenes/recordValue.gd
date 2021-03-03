extends RichTextLabel

var save_path = "user://save.dat"
var record

func _ready():
	loadRecord()
	self.text = " " + String(record)

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
