extends Label

func update_text(level, experience, required_exp):
	text = """Level: %s
			Experience: %s
			Next Level: %s
			""" % [level, experience, required_exp]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
