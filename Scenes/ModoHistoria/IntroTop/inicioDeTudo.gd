extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	MenuPrincipalMonge.anuncioBanner()
	$ParallaxBackground/backersongroundo/AnimationPlayer.play("iniciacaoInicio")

# warning-ignore:unused_argument
func _process(delta):
	pass
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
