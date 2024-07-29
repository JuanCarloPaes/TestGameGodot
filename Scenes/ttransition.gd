extends CanvasLayer

signal scene_changer()


onready var animation_player = $AnimationPlayer
# warning-ignore:unused_class_variable
onready var black = $Control/ColorRect

func change_scene(path, delay = 0.5):
	yield(get_tree().create_timer(delay), "timeout")
	animation_player.play("fade")
	yield(animation_player,"animation_finished")
# warning-ignore:standalone_expression
	get_tree().change_scene(path) == OK
	animation_player.play_backwards("fade")
	yield(animation_player,"animation_finished")
	emit_signal("scene_changer")
