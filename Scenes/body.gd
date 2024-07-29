extends KinematicBody2D

var existencia = true
var speed = 100
var direcao = Vector2()

# warning-ignore:unused_argument
func _physics_process(delta):
	add_to_group("INIMIGOS")
	if existencia == true:
		direcao.x -= 1
	direcao = direcao.normalized() * speed
	direcao = move_and_slide(direcao)
		
func DESTRUIR():
	speed = 0
	get_node("sprite").queue_free()
	get_node("CollisionShape2D").queue_free()
	get_node("AnimationPlayer").queue_free()
	get_node("Particles2D").set_emitting(true)
	existencia = false
	self.queue_free()
		