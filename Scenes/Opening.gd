extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedSprite.play("faz")
	yield($AnimatedSprite , "animation_finished")
	$AnimatedSprite.play("gaz")






func _on_Button_pressed():
	print("porra")
	ttransition.change_scene("res://Scenes/game.tscn")
