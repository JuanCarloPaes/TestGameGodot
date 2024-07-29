extends KinematicBody2D
#INIMIO QUE SEGUE
#============================================== VARIAVEIS PRA GRAVIDADE
var GRAVITY = 999999
const STOP_FORCE = 13000
var velocity = Vector2.ZERO
#==============================================

var existencia = true
var speed = 125#255 # leva 1.38 pra alcancar o personagem
var direcao = Vector2()
var vida = 0

# warning-ignore:unused_argument
func _physics_process(delta):
	add_to_group("INIMIGOS")
	#------------------------------------------- GRAVIDADE APLICADA NO INIMIGO
	var force = Vector2(0, GRAVITY)
	
	var vsign = sign(velocity.x)
	var vlen = abs(velocity.x)
		
	vlen -= STOP_FORCE * delta
	if vlen < 0:
		vlen = 0
		
	velocity.x = vlen * vsign
	
	# Integrate forces to velocity
	velocity += force * delta
	# Integrate velocity into motion and move
	velocity = move_and_slide(velocity, Vector2(0, -1))
	#---------------------------------------------------------------------------
	if existencia == true:
		direcao.x += 10
	direcao = direcao.normalized() * speed
	direcao = move_and_slide(direcao)
	
	if vida==2:
		recuar()
		
func DESTRUIR():
	$AnimatedSprite.play("chutao")
	yield($AnimatedSprite,"animation_finished")
	$AnimatedSprite.play("an")
	GRAVITY = -0.1
	$CollisionShape2D.set_deferred("disabled", true)
	speed = 600
	$tempodevida.start()

func DESTRUIRsoco():
	direcao.x = -22
	direcao.y = -10
	$AnimatedSprite.play("hitado")
	yield($AnimatedSprite,"animation_finished")
	$AnimatedSprite.play("an")
	vida += 1

func recuar():
	$Icone.hide()
	$AnimatedSprite.visible = false
	$Sprite.visible = true
	$"Sprite/murro na caraEsquerda".emitting = true
	speed = 0
	GRAVITY = 1
	$CollisionShape2D.set_deferred("disabled", true)
	$AnimationPlayer.play("morrendo")
	yield($AnimationPlayer,"animation_finished")
	self.queue_free()

func PARRYchute():
	erronio()
	speed = 0
	GRAVITY = 1
	$CollisionShape2D.set_deferred("disabled", true)
	$AnimatedSprite.play("parryfodaA")
	yield($AnimatedSprite,"animation_finished")
	$AnimatedSprite.play("an")
	GRAVITY = 0.1
	$CollisionShape2D.set_deferred("disabled", true)
	speed = 600
	$tempodevida.start()

func erronio():
	$erro.show()
	$AnimationPlayer2.play("erro")
	yield($AnimationPlayer2,"animation_finished")
	$Icone.hide()
	$erro.hide()

func _on_tempodevida_timeout():
	self.queue_free()
