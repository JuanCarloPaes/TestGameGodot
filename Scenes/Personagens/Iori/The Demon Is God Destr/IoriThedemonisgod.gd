extends KinematicBody2D


#arrsignalstairs[i].set_deferred("disabled", true) ASSIM Q USA O SET DEFERRED AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA <<<<<<<<<<------------------
#variáveis pra pulo e gravidade ==================================
const GRAVITY = 600.0 # pixels/second/second

# Angle in degrees towards either side that the player can consider "floor"
const FLOOR_ANGLE_TOLERANCE = 40
const WALK_FORCE = 600
const WALK_MIN_SPEED = 10
const WALK_MAX_SPEED = 200
const STOP_FORCE = 1300
const JUMP_SPEED = 200
const JUMP_MAX_AIRBORNE_TIME = 0.2


const SLIDE_STOP_VELOCITY = 1.0 # one pixel/second
const SLIDE_STOP_MIN_TRAVEL = 1.0 # one pixel


var velocity = Vector2.ZERO
var on_air_time = 100
var jumping = false
var prev_jump_pressed = false
#================================================================

#variáveis pra ataque ===========================================
var pode_atacar = true
var ataque = false
var ataque2 = false
var anim_numb = 1
var ataque_anim=null
var ataque_anim2=null
var direita = true
var esquerda = false
						  #variaveis pro "slide" depois de um golpe *******************
#var vel = 500 *******************
#var aceleracao = 100 *******************
#var velocidade = Vector2() *******************

#variavel pra vida
var vivo = true
var zigg = 0
var perdeu = ""
var hitado = false
#==================================================================
#variável pro touch----------------------------------------------------
var socoESQ
var socoDIR

#variável pra chamar o animador ===================================
onready var gay = get_node("animationPlayer")
#==================================================================
#pontuação===============================================================
var pontos = 0
var multi = 1

func _ready():
	$fimdefase.start()
	$multiplicadorpoto.start()

func _physics_process(delta):
	#variavel que determina a direcao e velocidade que o personagem desliza *******************
	#var velDesejada = 0 *******************
	#================================================
	#força pra ser usada na movimentação e gravidade
	var force = Vector2(0, GRAVITY)
	#================================================
	#auxiliadores pra chamar a animação de golpe
	ataque_anim = "golpe"+str(anim_numb)
	ataque_anim2= "golpeE"+str(anim_numb)
	#===========================================
	
	#movimentação e gravidade no jogo=============================================
	var walk_left = Input.is_action_pressed("move_left") and vivo
	var walk_right = Input.is_action_pressed("move_right") and vivo
	var jump = Input.is_action_pressed("jump") and vivo
	
	var stop = true
	
	if Input.is_action_just_pressed("reset") and vivo == false:
		ttransition.change_scene("res://Scenes/Game.tscn")
	
	if walk_left:
		if velocity.x <= WALK_MIN_SPEED and velocity.x > -WALK_MAX_SPEED:
			force.x -= WALK_FORCE
			stop = false
			
	elif walk_right:
		if velocity.x >= -WALK_MIN_SPEED and velocity.x < WALK_MAX_SPEED:
			force.x += WALK_FORCE
			stop = false
	
	if stop:
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
	#==========================================================================
	
	#pulo =====================================================================
	if is_on_floor():
		on_air_time = 0
		
	if jumping and velocity.y > 0:
		# If falling, no longer jumping
		jumping = false
	
	if on_air_time < JUMP_MAX_AIRBORNE_TIME and jump and not prev_jump_pressed and not jumping:
		# Jump must also be allowed to happen if the character left the floor a little bit ago.
		# Makes controls more snappy.
		velocity.y = -JUMP_SPEED
		jumping = true
	
	on_air_time += delta
	prev_jump_pressed = jump
	#========================================================================
	#==============================================================================================
	
	#Movimentação do personagem ================================
	if walk_right:
		direita = true
		esquerda = false
		gay.play("andando")
	#------------------------------------------------ TRECHO QUE FAZ O USUARIO TER QUE MANTER PRESSIONADO O BOTADO DE IR
	# PRA ESQUERDA PRA PODER O PERSONAGEM REALIZAR A AÇÃO DE SE VIRAR
	#if direita == true and walk_left:
		#gay.play("turnARoundD-p-E")
		#yield(gay,"animation_finished")
		#direita = false
	#------------------------------------------------
	elif walk_left:
		direita = false
		esquerda = true
		gay.play("andandoE")
	#===========================================================
		
	#COMBO======================================================
	elif (Input.is_action_just_pressed("golpe") or socoDIR) && pode_atacar == true && vivo == true and hitado == false:
		$Timer.start()
		$AreaVIDAS/CollisionShape2D.set_deferred("disabled",true)
		$AreaVIDAS2/CollisionShape2D.set_deferred("disabled",true)
		#velDesejada = vel #direção que o personagem desliza ao atacar *******************
		PORRADA()
		pode_atacar = false
		$DelayGolpe.start()
		
		if $Timer.time_left > 0:
			anim_numb +=1
		
		if anim_numb == 6:
			anim_numb = 1
		
	elif (Input.is_action_just_pressed("golpeE") or socoESQ) && pode_atacar == true && vivo == true and hitado == false:
		$Timer.start()
		$AreaVIDAS/CollisionShape2D.set_deferred("disabled",true)
		$AreaVIDAS2/CollisionShape2D.set_deferred("disabled",true)
		#velDesejada = -vel #direção que o personagem desliza ao atacar *******************
		PORRADA2()
		pode_atacar = false
		$DelayGolpe.start()
		
		if $Timer.time_left > 0:
			anim_numb +=1

		if anim_numb == 6:
			anim_numb = 1
	#=============================================================
	
	#Condicional pra personagem ficar estatico na direção ideal
	elif ataque == false and ataque2 == false and direita == true and vivo and hitado == false:
		gay.play("parado")
	elif ataque == false and ataque2 == false and esquerda == true and vivo and hitado == false:
		gay.play("paradoE")
	#=============================================================
	#Slide dos ataques============================================ *******************
	#velocidade.x += (velDesejada - velocidade.x)*aceleracao*delta *******************
	#velocidade = move_and_slide(velocidade) *******************
	#==============================================================
#funções pra COMBO=================================================
func PORRADA():
	ataque = true
	direita = true
	esquerda = false
	self.position+=Vector2(20,0)
	gay.play(ataque_anim)
	#spawnSocoDireita()
	yield(gay, "animation_finished")
	ataque = false

func PORRADAperto():
	ataque = true
	direita = true
	esquerda = false
	self.position+=Vector2(10,0)
	gay.play("golperapido")
	#spawnSocoDireita()
	yield(gay, "animation_finished")
	ataque = false

func PORRADAperto2():
	ataque = true
	direita = true
	esquerda = false
	self.position+=Vector2(-10,0)
	gay.play("golperapidoE")
	#spawnSocoEsquerda()
	yield(gay, "animation_finished")
	ataque = false
	
func PORRADA2():
	ataque2 = true
	direita = false
	esquerda = true
	self.position+=Vector2(-20,0)
	gay.play(ataque_anim2)
	#spawnSocoEsquerda()
	yield(gay, "animation_finished")
	ataque2 = false

#func virada():
	#gay.play("turnARoundD-p-E")
	#yield(gay,"animation_finished")
		
		
func on_delay_complete():
	pode_atacar = true
	$AreaVIDAS/CollisionShape2D.set_deferred("disabled",false)
	$AreaVIDAS2/CollisionShape2D.set_deferred("disabled",false)

func _on_DelayGolpe_timeout():
	on_delay_complete()

func _on_Timer_timeout():
	anim_numb = 1
#===========================================================================

#hitbox =======================================

#func _on_Area2D_body_entered(body):
	#if body.has_method("DESTRUIR2"):
		#body.DESTRUIR2()
		#on_delay_complete()
	#if body.has_method("DESTRUIR"):
		#body.DESTRUIR()
		#on_delay_complete()
#==============================================


# VIDA E MORTE===========================================================================
# warning-ignore:unused_argument
func _on_AreaVIDAS_body_entered(body):
	if body.has_method("DESTRUIR") or body.has_method("DESTRUIR2"):
		multi = 1
		pontos -= 500
		$RichTextLabel.text = str(pontos)
		hitado = true
		$porradanacara.start()
		zigg += 1
		$VIDA.frame = zigg/2
		body.queue_free()
		Engine.time_scale = 0.2
		gay.play("hitE")
		if zigg == 16:
			perdeu = "Morrendo(golpe da esquerda)"
			morrer()
			
func _on_AreaVIDAS2_body_entered(body):
	if body.has_method("DESTRUIR") or body.has_method("DESTRUIR2"):
		multi = 1
		pontos -= 500
		$RichTextLabel.text = str(pontos)
		hitado = true
		$porradanacara.start()
		zigg += 1
		$VIDA.frame = zigg/2
		body.queue_free()
		Engine.time_scale = 0.2
		gay.play("hit")
		if zigg >= 16:
			perdeu = "Morrendo(golpe da direita)"
			morrer()

func morrer():
	$PauseFodase.hide()
	pontos = 0
	$RichTextLabel.text = str(pontos)
	$fimdefase.queue_free()
	$spawners.queue_free()
	vivo = false
	velocity.y = -150
	gay.play(perdeu)
	Engine.time_scale = 0.3
	yield(gay,"animation_finished")
	$Button.visible = true
	$quitar.visible = true
	Engine.time_scale = 1
	
# =============================================================================
# warning-ignore:unused_argument
func _on_detectarDIREITA_body_entered(body):
	if body.has_method("DESTRUIR") or body.has_method("DESTRUIR2"):
		get_node("SinalizadorDIREITA").set_visible(true)


# warning-ignore:unused_argument
func _on_detectarDIREITA_body_exited(body):
	if body.has_method("DESTRUIR") or body.has_method("DESTRUIR2"):
		get_node("SinalizadorDIREITA").set_visible(false)


# warning-ignore:unused_argument
func _on_detectarESQUERDA_body_entered(body):
	if body.has_method("DESTRUIR") or body.has_method("DESTRUIR2"):
		get_node("SinalizadorESQUERDA").set_visible(true)


# warning-ignore:unused_argument
func _on_detectarESQUERDA_body_exited(body):
	if body.has_method("DESTRUIR") or body.has_method("DESTRUIR2"):
		get_node("SinalizadorESQUERDA").set_visible(false)
	
#================================================================================= spawn do tiro de soco




#touch buttons =---------------------------------------------------

func _on_TouchScreenButton_pressed():
	socoESQ = true
	$CanvasLayer/TouchScreenButton2/botaoAtaqueE.start()
func _on_botaoAtaqueE_timeout():
	socoESQ = false

func _on_TouchScreenButton_released():
	socoESQ = false



func _on_TouchScreenButton2_pressed():
	socoDIR = true
	$CanvasLayer/TouchScreenButton/botaoAtaqueD.start()
func _on_botaoAtaqueD_timeout():
	socoDIR = false

func _on_TouchScreenButton2_released():
	socoDIR = false
#=--------------------------------------------------------------------

func _on_Button_pressed():
	ttransition.change_scene("res://Scenes/Personagens/Iori/The Demon Is God Destr/Game 3.tscn")


func _on_punho_body_entered(body):
	var randomo = randi()%2+1
	if randomo > 1:
		$"som de porrada".play()
	else:
		$"som de porrada2".play()
	if body.has_method("DESTRUIR2"):
		body.DESTRUIR2()
		$punho/shapepunho.set_deferred("disabled",true)
		on_delay_complete()
		pontos += 500*multi
		$RichTextLabel.text = str(pontos)
	if body.has_method("DESTRUIR"):
		body.DESTRUIR()
		$punho/shapepunho.set_deferred("disabled",true)
		on_delay_complete()
		pontos += 250*multi
		$RichTextLabel.text = str(pontos)







#timer de soco na cara acabando-------------------------------------------------------
func _on_porradanacara_timeout():
	Engine.time_scale = 1
	hitado = false

#-------------------------------------------------------

func _on_fimdefase_timeout():
	$PauseFodase.hide()
	$TheDemonIsGod.queue_free()
	pontos += 0
	$RichTextLabel.text = str(pontos)
	vivo = false
	$fraseFinal.visible = true
	$reset2.visible = true
	MenuPrincipalMonge.da(pontos)
	


func _on_multiplicadorpoto_timeout():
	multi += 1
	$multiplicadorpoto.start()


func _on_reset2_pressed():
	ttransition.change_scene(MenuPrincipalMonge.menuMonge)






func _on_areadepreparo_body_entered(body):
	if body.has_method("contato"):
		body.contato()


func _on_areadepreparo_body_exited(body):
	if body.has_method("recuar"):
		body.recuar()


func _on_quitar_pressed():
	ttransition.change_scene("res://Scenes/MenuPrincipal.tscn")
	yield(get_tree().create_timer(0.5),"timeout")
	$"/root/MenuPrincipal".visiblo()

func _on_PauseFodase_pressed():
	get_tree().paused = true
	Engine.time_scale = 0
	$ficarPorCimaDoSpawn/MenuPause.show()


func _on_resume_pressed():
	Engine.time_scale = 1
	$ficarPorCimaDoSpawn/MenuPause.hide()
	get_tree().paused = false


func _on_resetar_pressed():
	Engine.time_scale = 1
	$ficarPorCimaDoSpawn/MenuPause.hide()
	get_tree().paused = false
	ttransition.change_scene("res://Scenes/Personagens/Iori/The Demon Is God Destr/Game 3.tscn")


func _on_quitar2_pressed():
	Engine.time_scale = 1
	$ficarPorCimaDoSpawn/MenuPause.hide()
	get_tree().paused = false
	ttransition.change_scene(MenuPrincipalMonge.menuMonge)
	MenuPrincipalMonge.show()

