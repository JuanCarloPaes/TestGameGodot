extends KinematicBody2D


#arrsignalstairs[i].set_deferred("disabled", true) ASSIM Q USA O SET DEFERRED AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA <<<<<<<<<<------------------
#variáveis pra pulo e gravidade ==================================
const GRAVITY = 600 # pixels/second/second

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

var anim_numb_soco = 1
var anim_numb_chute = 1

var ataque_anim_soco =null
#var ataque_anim_chute = null

var ataque_anim_soco2 = null
#var ataque_anim_chute2 = null

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
var chuteESQ

var socoDIR
var chuteDIR

var golpeDIAG
var golpeDIAGe

#variável pra chamar o animador ===================================
onready var gay = get_node("AnimationPlayer")
#==================================================================
#controle do reset ===========================
var resetFaseAtual = MenuPrincipalMonge.faseAtual

#pontuação===============================================================
var pontos = 0
var multi = 1

func _ready():
	$"/root/MenuPrincipalMonge".hide()
	#$"/root/MenuPrincipal".hide()

func _physics_process(delta):
	#variavel que determina a direcao e velocidade que o personagem desliza *******************
	#var velDesejada = 0 *******************
	#================================================
	#força pra ser usada na movimentação e gravidade
	var force = Vector2(0, GRAVITY)
	#================================================
	#auxiliadores pra chamar a animação de golpe
	ataque_anim_soco = "ataque"+str(anim_numb_soco)
	ataque_anim_soco2 = "ataqueE"+str(anim_numb_soco)
	
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
		
	elif walk_left:
		esquerda = true
		direita = false
		gay.play("andandoE")
	#------------------------------------------------ TRECHO QUE FAZ O USUARIO TER QUE MANTER PRESSIONADO O BOTADO DE IR
	# PRA ESQUERDA PRA PODER O PERSONAGEM REALIZAR A AÇÃO DE SE VIRAR
	#if direita == true and walk_left:
		#gay.play("turnARoundD-p-E")
		#yield(gay,"animation_finished")
		#direita = false
	#------------------------------------------------
	#COMBO============================================================================
	elif (Input.is_action_just_pressed("seqSocoE") or socoDIR) && pode_atacar == true && vivo == true and hitado == false:
		$Timer.start()
		$AreavidaD/CollisionShape2D.set_deferred("disabled",true)
		PORRADA()
		pode_atacar = false
		$DelayGolpe.start()
		
		if $Timer.time_left > 0:
			anim_numb_soco +=1
		
		if anim_numb_soco == 7:
			anim_numb_soco = 1
	
	elif (Input.is_action_just_pressed("seqChuteE")or chuteDIR) && pode_atacar == true && vivo == true and hitado == false:
		$Timer.start()
		$AreavidaD/CollisionShape2D.set_deferred("disabled",true)
		PORRADA2()
		pode_atacar = false
		$DelayGolpe.start()
		
		if $Timer.time_left > 0:
			anim_numb_soco +=1
		
		if anim_numb_soco == 7:
			anim_numb_soco = 1
	
			
	elif (Input.is_action_just_pressed("seqChute") or golpeDIAG) && pode_atacar == true && vivo == true and hitado == false:
		$Timer.start()
		$AreavidaD/CollisionShape2D.set_deferred("disabled",true)
		PORRADAdiag()
		pode_atacar = false
		$DelayGolpe.start()
	
	elif (Input.is_action_just_pressed("seqSoco") or golpeDIAGe) && pode_atacar == true && vivo == true and hitado == false:
		$Timer.start()
		$AreavidaD/CollisionShape2D.set_deferred("disabled",true)
		PORRADAdiag2()
		pode_atacar = false
		$DelayGolpe.start()
	
	
	#=========================================================================================================
		
	elif ataque == false and ataque2 == false and direita == true and vivo and hitado == false:
		gay.play("parado")
	elif ataque == false and ataque2 == false and esquerda == true and vivo and hitado == false:
		gay.play("paradoE")
	#===========================================================
	
	
func PORRADA():
	ataque = true
	direita = true
	esquerda = false
	self.position+=Vector2(8,0)
	gay.play(ataque_anim_soco)
	#spawnSocoDireita()
	yield(gay, "animation_finished")
	ataque = false



func PORRADAdiag():
	ataque = true
	direita = true
	esquerda = false
	self.position+=Vector2(8,0)
	gay.play("ataqueDiagonal1")
	#spawnSocoDireita()
	yield(gay, "animation_finished")
	ataque = false
	
func PORRADAdiag2():
	ataque2 = true
	direita = false
	esquerda = true
	self.position+=Vector2(-8,0)
	gay.play("ataqueDiagonalE1")
	#spawnSocoDireita()
	yield(gay, "animation_finished")
	ataque2 = false

func PORRADA2():
	ataque2 = true
	direita = false
	esquerda = true
	self.position+=Vector2(-8,0)
	gay.play(ataque_anim_soco2)
	#spawnSocoEsquerda()
	yield(gay, "animation_finished")
	ataque2 = false
	
#func PORRADA2chute():
	#ataque2 = true
	#direita = false
	#esquerda = true
	#self.position+=Vector2(-20,0)
	#gay.play(ataque_anim_chute2)
	#spawnSocoEsquerda()
	#yield(gay, "animation_finished")
	#ataque2 = false

func machucadoD():
	Engine.time_scale = 0.5
	hitado = true
	multi = 1
	$Pontuacao/combo2.text = str(multi)
	gay.play("hit")
	$"Sprite/murro na caraEsquerda".emitting = true
	yield(gay,"animation_finished")
	hitado = false
	Engine.time_scale = 1

func machucadoPARRYD():
	#hitado = true
	#zigg += 1
	#$VIDA.frame = zigg
	machucadoD()

func machucadoE():
	Engine.time_scale = 0.5
	hitado = true
	multi = 1
	$Pontuacao/combo2.text = str(multi)
	gay.play("hitE")
	$"Sprite/murro na cara".emitting = true
	yield(gay,"animation_finished")
	hitado = false
	Engine.time_scale = 1
	
func machucadoPARRYE():
	#hitado = true
	#zigg += 1
	#$VIDA.frame = zigg
	machucadoE()
	
func morrer():
	pass 

func on_delay_complete():
	pode_atacar = true
	$AreavidaD/CollisionShape2D.set_deferred("disabled",false)
	#$AreavidaE/CollisionShape2D.set_deferred("disabled",false)
	

func _on_DelayGolpe_timeout():
	on_delay_complete()

func _on_Timer_timeout():
	anim_numb_soco = 1
	anim_numb_chute = 1


func _on_quitar2_pressed():
	Engine.time_scale = 1
	$ficarPorCimaDoSpawn/MenuPause.hide()
	get_tree().paused = false
	ttransition.change_scene(MenuPrincipalMonge.menuMonge)


func _on_resume_pressed():
	Engine.time_scale = 1
	$ficarPorCimaDoSpawn/MenuPause.hide()
	get_tree().paused = false


func _on_resetar_pressed():
	Engine.time_scale = 1
	$ficarPorCimaDoSpawn/MenuPause.hide()
	get_tree().paused = false
	ttransition.change_scene(resetFaseAtual)


func _on_PauseFodase_pressed():
	get_tree().paused = true
	Engine.time_scale = 0
	$ficarPorCimaDoSpawn/MenuPause.show()


func _on_socoDireita_body_entered(body):
	if body.has_method("DESTRUIRsoco"):
		body.DESTRUIRsoco()
		$punchChuteSom.play()
		#$ControleColisaoFdase.play("controle")
		#$socoDireita/socoDireitaShape.set_deferred("disabled",true)
		on_delay_complete()
		multi += 1
		pontos += 100*multi
		$Pontuacao/combo2.text = str(multi)
		$Pontuacao.text = str(pontos)
		#$socoDireita/socoDireitaShape.set_deferred("disabled",true)
	if body.has_method("PARRYsoco"):
		body.PARRYsoco()
		$punchDanoSom.play()
		machucadoPARRYD()
		$ControleColisaoFdase.play("controle")


func _on_chuteDireita_body_entered(body):
	if body.has_method("DESTRUIRchute"):
		body.DESTRUIRchute()
		$punchChuteSom.play()
		#$ControleColisaoFdase.play("controle")
		#$socoDireita/socoDireitaShape.set_deferred("disabled",true)
		on_delay_complete()
		multi += 1
		pontos += 100*multi
		$Pontuacao/combo2.text = str(multi)
		$Pontuacao.text = str(pontos)
		#$socoDireita/socoDireitaShape.set_deferred("disabled",true)
	if body.has_method("PARRYchute"):
		body.PARRYchute()
		$punchDanoSom.play()
		machucadoPARRYD()
		$ControleColisaoFdase.play("controle")

func _on_porradaGlobalDireita_body_entered(body):
	if body.has_method("DESTRUIRglobal"):
		body.DESTRUIRglobal()
		$punchChuteSom.play()
		#$ControleColisaoFdase.play("controle")
		#$socoDireita/socoDireitaShape.set_deferred("disabled",true)
		on_delay_complete()
		multi += 1
		pontos += 200*multi
		$Pontuacao/combo2.text = str(multi)
		$Pontuacao.text = str(pontos)


func _on_AreavidaD_body_entered(body):
	if body.has_method("DESTRUIR"):
		body.DESTRUIR()
		#hitado = true
		#zigg += 1
		machucadoD()

func _on_AreavidaE_body_entered(body):
	if body.has_method("DESTRUIR"):
		body.DESTRUIR()
		#hitado = true
		#zigg += 1
		machucadoE()



#atacar direita===========================
func _on_TouchScreenButton_pressed():
	socoDIR = true
	$CanvasLayer/TouchScreenButton/botaoDeSocoD.start()
func _on_botaoDeSocoD_timeout():
	socoDIR = false


func _on_TouchScreenButton3_pressed():
	chuteDIR = true
	$CanvasLayer/TouchScreenButton3/botaoDeChuteD.start()
func _on_botaoDeChuteD_timeout():
	chuteDIR = false


func _on_DiagonalAtack_pressed():
	golpeDIAG = true
	$CanvasLayer/DiagonalAtack/botaoDeSocoDiagonal.start()
func _on_botaoDeSocoDiagonal_timeout():
	golpeDIAG = false


func _on_DiagonalAtackE_pressed():
	golpeDIAGe = true
	$CanvasLayer/DiagonalAtackE/botaoDeDiagonalE.start()
func _on_botaoDeDiagonalE_timeout():
	golpeDIAGe = false

#-========================================




#atacar esquerda==========================

#============================================



func _on_sensor_body_entered(body):
	if body.has_method("DESTRUIR"):
		$sinal.show()
	if body.has_method("PreparaAtaque"):
		body.PreparaAtaque()


# warning-ignore:unused_argument
func _on_sensor_body_exited(body):
	$sinal.hide()

func HighScore():
	$"/root/MenuPrincipalMonge".comparar(pontos)






