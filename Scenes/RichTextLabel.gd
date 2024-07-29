extends RichTextLabel
const piroca = preload ("res://Scenes/Spawn_Inimigo.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var cacetero = piroca.get("monstrose")
	
	
	set_text( str(cacetero) )

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
