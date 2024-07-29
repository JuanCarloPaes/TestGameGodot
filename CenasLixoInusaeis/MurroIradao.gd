extends KinematicBody2D


var existencia = true
var speed = 600 # leva 1.38 pra alcancar o personagem
var direcao = Vector2()

# warning-ignore:unused_argument
func _physics_process(delta):
	if existencia == true:
		direcao.x += 1
	direcao = direcao.normalized() * speed
	direcao = move_and_slide(direcao)
		

func _on_Area2D_body_entered(body):
	if body.has_method("DESTRUIR2"):
		body.DESTRUIR2()
		self.queue_free()
		get_parent().on_delay_complete()
	if body.has_method("DESTRUIR"):
		body.DESTRUIR()
		self.queue_free()
		get_parent().on_delay_complete()
		
func murraoDireita():
	self.queue_free()
