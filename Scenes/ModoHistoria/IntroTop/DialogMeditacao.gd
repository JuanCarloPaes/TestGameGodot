extends Control

var dialog = [
	"",
	"bom...",
	"aqui é o local onde as pessoas meditam no templo",
	"só sentar em algum local e [shake rate=50 level=10] mentalizar [/shake]",
	"e dependendo do que você [shake rate=50 level=10] mentalizar [/shake] ...",
	"portas podem vir a se abrir pro seu espirito",
	"(você pode agora usar o menu de códigos)",
	"alguma pergunta ?"
	#HORA DA ESCOLHA
]

#======================================================CAMINHO 1=====================
var dialogPath1 = [
	"",
	"bom, primeiro de tudo...",
	"feche os olhos e apenas siga minhas instrucões",
	"(Meditar a que me refiro é simplismente poder colocar codigos secretos)",
	"(em resumo, é uma desculpa pra um menu de códigos que liberam coisas aleatórias)",
	" ( agora voce pode usar o menu de segredos, e tente usar a palavra 'antsy' ao chegar la  ) ",
	"fimTUtoria",
]


#======================================================CAMINHO 2=====================
#====================================================================================
var dialogPath2 = [
	"",
	"excelente então",
	"agora me acompanhe que você vai ter o treino alternativo",
	"fimSEMTUTORIAL"
	
]
#=====================================================================================
var idaProTreino = false
var idaSEGREDOS = false

var pros

var dialog_index = 0

var INICIO = true

var finished = false

var visualModeNovel = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	MenuPrincipalMonge.hide()
	yield(get_tree().create_timer(1),"timeout")
	show()
	load_dialog()
	$Sprite/AnimationPlayer.play("aparicao1")
	

# warning-ignore:unused_argument
func _process(delta):
	$"next-indicator".visible = finished
	#if Input.is_action_just_pressed("golpeE") and finished == true:
		#visualModeNovel += 1
		#load_dialog()
	if Input.is_action_just_pressed("golpe"):
		visualModeNovel += 1
		REload_dialog()
		
		

	if visualModeNovel >= 1:
		$TextureButton.show() 
	
	
	

func load_dialog():
	$ControleVeloz.start()
	$Tween.playback_speed = 1
	finished = false
	dialog_index += 1
	if dialog_index <= dialog.size()-1:
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible" , 0, 1, 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	if dialog_index > dialog.size()-1 and INICIO == true:
		$Opcao1.show()
		INICIO = false
	
	if $RichTextLabel.bbcode_text == "aqui é o local onde as pessoas meditam no templo":
		$Sprite/AnimationPlayer.play("aparicao2")
	
	if $RichTextLabel.bbcode_text == "e dependendo do que você [shake rate=50 level=10] mentalizar [/shake] ...":
		$Sprite/AnimationPlayer.play("aparicao6")
	
	if $RichTextLabel.bbcode_text == "alguma pergunta ?":
		$Sprite/AnimationPlayer.play("aparicao8")
	#=====================================================dialogPath1
	if $RichTextLabel.bbcode_text == "bom, primeiro de tudo...":
		$Sprite/AnimationPlayer.play("aparicao9")
	
	#====================================================================
	#====================================================dialogpath2
	
	if $RichTextLabel.bbcode_text == "agora me acompanhe que você vai ter o treino alternativo":
		$Sprite/AnimationPlayer.play("aparicao6")
	#==================================================================
	if $RichTextLabel.bbcode_text == "fimSEMTUTORIAL":
		idaProTreino = true
		hide()
		IRTREINO()
	
		
	if $RichTextLabel.bbcode_text == "fimTUtoria":
		idaSEGREDOS = true
		hide()
		IRSEGREDOS()

func REload_dialog():
	$ControleVeloz.start()
	$Tween.playback_speed = 1
	finished = false
	dialog_index -= 1
	if dialog_index < 1:
		dialog_index = 1
	$RichTextLabel.bbcode_text = dialog[dialog_index]
	$RichTextLabel.percent_visible = 0
	$Tween.interpolate_property(
		$RichTextLabel, "percent_visible" , 0, 1, 0.2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
	)
	$Tween.start()
	
	if $RichTextLabel.bbcode_text == "aqui é o local onde as pessoas meditam no templo":
		$Sprite/AnimationPlayer.play("aparicao2")
	
	if $RichTextLabel.bbcode_text == "e dependendo do que você [shake rate=50 level=10] mentalizar [/shake] ...":
		$Sprite/AnimationPlayer.play("aparicao6")
	
	if $RichTextLabel.bbcode_text == "alguma pergunta ?":
		$Sprite/AnimationPlayer.play("aparicao8")
	#=====================================================dialogPath1
	if $RichTextLabel.bbcode_text == "bom, primeiro de tudo...":
		$Sprite/AnimationPlayer.play("aparicao9")
	
	#====================================================================
	#====================================================dialogpath2
	
	if $RichTextLabel.bbcode_text == "agora me acompanhe que você vai ter o treino alternativo":
		$Sprite/AnimationPlayer.play("aparicao6")
	#==================================================================
	if $RichTextLabel.bbcode_text == "fimSEMTUTORIAL":
		ControleDeSave.TUTORIALMEDITA = true
		ControleDeSave.save_inicio()
		idaProTreino = true
		hide()
		IRTREINO()
		
		
	if $RichTextLabel.bbcode_text == "fimTUtoria":
		ControleDeSave.TUTORIALMEDITA = true
		ControleDeSave.save_inicio()
		idaSEGREDOS = true
		hide()
		IRSEGREDOS()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_Tween_tween_completed(object, key):
	finished = true


func _on_TextureButton_pressed():
	$Tween.playback_speed = 9
	_on_ControleVeloz_timeout()


func _on_ControleVeloz_timeout():
	pass # Replace with function body.
	$TextureButton.hide()
	visualModeNovel = 0


func _on_Opcao1_pressed():
	dialog = dialogPath1
	dialog_index = 0
	$Opcao1.hide()
	load_dialog()


func _on_Opcao2_pressed():
	dialog = dialogPath2
	dialog_index = 0
	$Opcao1.hide()
	load_dialog()

func IRTREINO():
	ControleDeSave.TUTORIALMEDITA = true
	ControleDeSave.TUTORIALTREINO = true
	ControleDeSave.save_inicio()
	ttransition.change_scene("res://Scenes/Personagens/MongeFodao/MenuStyleMongeJooJ/MenuPrincipalMonge.tscn")

func IRSEGREDOS():
	ControleDeSave.TUTORIALMEDITA = true
	ControleDeSave.save_inicio()
	ttransition.change_scene("res://Scenes/MenuDosSegredos.tscn")
	
func _on_NEXT_pressed():
	visualModeNovel += 1
	load_dialog()
