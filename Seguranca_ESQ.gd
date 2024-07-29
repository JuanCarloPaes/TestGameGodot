extends KinematicBody2D
#INIMIO QUE SEGUE
#============================================== VARIAVEIS PRA GRAVIDADE
var GRAVITY = 999999
const STOP_FORCE = 13000
var velocity = Vector2.ZERO
#==============================================

var existencia = true
var speed = 255 #leva 1.38 segundos pra alcançar a "distância perfeita" pro personagem atacar
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
	
	#------------------------------------------------------------------- Personagem seguir pra direita infinitamente (ate bater no player)
	if existencia == true :
		direcao.x += 10
	direcao = direcao.normalized() * speed
	direcao = move_and_slide(direcao)
	#---------------------------------------------------------------------------
	#-------------------------Morte do inimigo (vida)
	if vida==2:
		recuar()
	#-------------------------
	
func DESTRUIR2():
	$AnimatedSprite.visible = false
	$Sprite.visible = true
	$AnimationPlayer.play("murronacara")
	vida+=1
	direcao.x = -22
	direcao.y = -10
	
func contato():
	$AnimationPlayer.play("ataque")

func recuar():
	$AnimatedSprite.visible = false
	$Sprite.visible = true
	$Sprite/Particles2D.emitting = true
	speed = 0
	GRAVITY = 1
	$CollisionShape2D.set_deferred("disabled", true)
	$AnimationPlayer.play("morreu")
	yield($AnimationPlayer,"animation_finished")
	self.queue_free()

