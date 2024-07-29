extends KinematicBody2D
var zumbie = self
var speed = 2
onready var target = get_parent().get_node("Player")

func _physics_process(delta):
	var direction = (target.get_global_pos() - zumbie.get_global_pos()).normalized()
	direction.y = 0
	move_and_slide(direction*speed)
