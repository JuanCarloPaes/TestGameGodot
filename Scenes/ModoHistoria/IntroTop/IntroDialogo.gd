extends Control

var dialog = [
	"",
	"ei você ai que chegou no templo",
	"Bem vindo você seja lá quem for",
	"Pode me chamar de Monge",
	"Nome top, diga lá",
	"Mas..o que veio fazer aqui ?"
	#HORA DA ESCOLHA
]

#======================================================CAMINHO 1=====================
var dialogPath1 = [
	"",
	"olha so, já veio sabendo o que quer",
	"isso é bom",
	"prefere o treino especial...",
	"...ou a meditação pra comecar ?",
	"Também tem...",
	"bom, só isso mesmo por hora",
	"qual vai ser ?",
]

var dP1aMeditacao = [
	"",
	"Venha comigo então",
	"e chegando lá, tente mentalizar algo para [shake rate=50 level=10] abrir caminhos ocultos [/shake]",
	"...",
	"heh, isso ficou meio confuso falando assim",
	"chegando lá eu te explico melhor, vamo nessa",
	"fimTUTORIALMEDITAR"
]

var dP2aTreino = [
	"",
	"Venha comigo então",
	"Vou te ensinar o treino especial desse templo",
	"Espero que curta descer a porrada na galera ouvindo um som",
	"e relaxa que eu te explico melhor chegando lá, vamo nessa",
	"fimTUTOTREINO"
]

var dialogFODASE = [
	"",
	"olha so, já veio sabendo o que quer",
	"você é uma pessoa bem apressada...",
	"Venha comigo então",
	"fimTUTOTREINO"
	
]

#======================================================CAMINHO 2=====================
#====================================================================================
var dialogPath2 = [
	"",
	"Hmmm...",
	"Então você é do tipo indeciso...",
	"Bom, aqui você pode fazer essas coisas:",
	"Treinar do jeito...alternativo",
	"meditar",
	"e..",
	"acho que é isso ?",
	"pra você só isso que ta disponivel no momento",
	"qual vai ser ?",
]
#=====================================================================================

#=========================================================PUXADADEPAPO(ESCOLHA 3)=====

var dialogTemNadanao = [
	"",
	"Bom...",
	"Sem coisas além disso pra fazer aqui",
	"quer dizer...eu faço outras coisas",
	"por exemplo...",
	"dou uma regada nas plantas...",
	"dou uma limpada no lugar...",
	"faço o treino especial extremo secreto...",
	"que você ainda não tá preparado pra fazer",
	"e talvez nunca esteja..",
	"...ou você pode me convencer que está preparado com o tempo...",
	"mas enfim, por hora você só pode fazer isso:",
	"meditar e fazer o treino alternativo",
	"qual vai ser ?"
	
]


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
	
	if $RichTextLabel.bbcode_text == "Pode me chamar de Monge":
		$Sprite/AnimationPlayer.play("aparicao2")
	
	if $RichTextLabel.bbcode_text == "Mas..o que veio fazer aqui ?":
		$Sprite/AnimationPlayer.play("aparicao3")
	
	
	#=====================================================dialogPath1
	if $RichTextLabel.bbcode_text == "olha so, já veio sabendo o que quer":
		$Sprite/AnimationPlayer.play("aparicao4")
	
	if $RichTextLabel.bbcode_text == "isso é bom":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "prefere o treino especial...":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	if $RichTextLabel.bbcode_text == "...ou a meditação pra comecar ?":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "bom, só isso mesmo por hora":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "qual vai ser ?": #FRASE FINAL DA ESCOLHA 1
		$Sprite/AnimationPlayer.play("aparicao8")
		$Opcao3.show()
	
	#======================================================dialogPath2
	if $RichTextLabel.bbcode_text == "Hmmm...":
		$Sprite/AnimationPlayer.play("aparicao9")
	
	if $RichTextLabel.bbcode_text == "Bom, aqui você pode fazer essas coisas:":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "Treinar do jeito...alternativo":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	if $RichTextLabel.bbcode_text == "meditar":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "acho que é isso ?":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "pra você só isso que ta disponível no momento":
		$Sprite/AnimationPlayer.play("aparicao8")
	#==========================================================================
	#==================================================dialogo 3===============
	if $RichTextLabel.bbcode_text == "Bom...":
		$Sprite/AnimationPlayer.play("aparicao4")
	
	if $RichTextLabel.bbcode_text == "Sem coisas além disso pra fazer aqui":
		$Sprite/AnimationPlayer.play("aparicao3")
	
	if $RichTextLabel.bbcode_text == "quer dizer...eu faço outras coisas":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "dou uma regada nas plantas...":
		$Sprite/AnimationPlayer.play("aparicao10")
	
	if $RichTextLabel.bbcode_text == "faço o treino especial extremo secreto...":
		$Sprite/AnimationPlayer.play("aparicao2")
	
	if $RichTextLabel.bbcode_text == "que você ainda não tá preparado pra fazer":
		$Sprite/AnimationPlayer.play("aparicao9")
	
	if $RichTextLabel.bbcode_text == "...ou você pode me convencer que está preparado com o tempo...":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "mas enfim, por hora você só pode fazer isso:":
		$Sprite/AnimationPlayer.play("aparicao5")
		$Opcao3/Opcao5.hide()
	#============================================================================
	#==================dialogo meditacao ============
	if $RichTextLabel.bbcode_text == "...":
		$Sprite/AnimationPlayer.play("aparicao3")
	
	if $RichTextLabel.bbcode_text == "heh, isso ficou meio confuso falando assim":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	
	if $RichTextLabel.bbcode_text == "fimTUTORIALMEDITAR":
		hide()
		ttransition.change_scene("res://Scenes/ModoHistoria/IntroTop/IntroMEDITACAO.tscn")
	
	if $RichTextLabel.bbcode_text == "fimTUTOTREINO":
		ControleDeSave.TUTORIALTREINO = true
		ControleDeSave.save_inicio()
		hide()
		ttransition.change_scene("res://Scenes/Personagens/MongeFodao/MenuStyleMongeJooJ/MenuPrincipalMonge.tscn")
		

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
	
	if $RichTextLabel.bbcode_text == "Pode me chamar de Monge":
		$Sprite/AnimationPlayer.play("aparicao2")
	
	if $RichTextLabel.bbcode_text == "Mas..o que veio fazer aqui ?":
		$Sprite/AnimationPlayer.play("aparicao3")
	
	
	#=====================================================dialogPath1
	if $RichTextLabel.bbcode_text == "olha so, já veio sabendo o que quer":
		$Sprite/AnimationPlayer.play("aparicao4")
	
	if $RichTextLabel.bbcode_text == "isso é bom":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "prefere o treino especial...":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	if $RichTextLabel.bbcode_text == "...ou a meditação pra comecar ?":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "bom, só isso mesmo por hora":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "qual vai ser ?": #FRASE FINAL DA ESCOLHA 1
		$Sprite/AnimationPlayer.play("aparicao8")
		$Opcao3.show()
	
	#======================================================dialogPath2
	if $RichTextLabel.bbcode_text == "Hmmm...":
		$Sprite/AnimationPlayer.play("aparicao9")
	
	if $RichTextLabel.bbcode_text == "Bom, aqui você pode fazer essas coisas:":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "Treinar do jeito...alternativo":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	if $RichTextLabel.bbcode_text == "meditar":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "acho que é isso ?":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "pra você só isso que ta disponível no momento":
		$Sprite/AnimationPlayer.play("aparicao8")
	#==========================================================================
	#==================================================dialogo 3===============
	if $RichTextLabel.bbcode_text == "Bom...":
		$Sprite/AnimationPlayer.play("aparicao4")
	
	if $RichTextLabel.bbcode_text == "Sem coisas além disso pra fazer aqui":
		$Sprite/AnimationPlayer.play("aparicao3")
	
	if $RichTextLabel.bbcode_text == "quer dizer...eu faço outras coisas":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "dou uma regada nas plantas...":
		$Sprite/AnimationPlayer.play("aparicao10")
	
	if $RichTextLabel.bbcode_text == "faço o treino especial extremo secreto...":
		$Sprite/AnimationPlayer.play("aparicao2")
	
	if $RichTextLabel.bbcode_text == "que você ainda não tá preparado pra fazer":
		$Sprite/AnimationPlayer.play("aparicao9")
	
	if $RichTextLabel.bbcode_text == "...ou você pode me convencer que está preparado com o tempo...":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "mas enfim, por hora você só pode fazer isso:":
		$Sprite/AnimationPlayer.play("aparicao5")
		$Opcao3/Opcao5.hide()
	#============================================================================
	#==================dialogo meditacao ============
	if $RichTextLabel.bbcode_text == "...":
		$Sprite/AnimationPlayer.play("aparicao3")
	
	if $RichTextLabel.bbcode_text == "heh, isso ficou meio confuso falando assim":
		$Sprite/AnimationPlayer.play("aparicao5")

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


	pass # Replace with function body.
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


func _on_Opcao3_pressed():
	dialog = dP1aMeditacao
	dialog_index = 0
	$Opcao3.hide()
	load_dialog()

func _on_Opcao4_pressed():
	dialog = dP2aTreino
	dialog_index = 0
	$Opcao3.hide()
	load_dialog()




func _on_Opcao5_pressed():
	dialog = dialogTemNadanao
	dialog_index = 0
	$Opcao3.hide()
	load_dialog()


func _on_NEXT_pressed():
	visualModeNovel += 1
	load_dialog()


func _on_OpcaoVAZEI_pressed():
	dialog = dialogFODASE
	dialog_index = 0
	$Opcao1.hide()
	load_dialog()
