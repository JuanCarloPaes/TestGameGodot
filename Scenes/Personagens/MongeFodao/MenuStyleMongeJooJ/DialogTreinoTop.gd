extends Control

var dialog = [
	"",
]

var dialogANTSY = [
	"",
	"Diário do dev- 003",
	"E aí meus Godofredos",
	"Atualização nova sem tanta coisa aparentemente...",
	"Me desculpem mas...",
	#natanael entra em cena e fala
	"Pera aí, tá esquecendo que eu tô aqui otário?",
	#monge
	"Natanael...",
	#natanael
	"Isso mesmo panaca, sou eu... Natanael, o Lutadeiro sem nome",
	"Quer dizer, seria o Lutadeiro sem nome, se o eunuco aí não tivesse estragado o suspense...",
	#monge
	"Eunuco é o cacete, cala tua boca",
	#natanael
	"Mas tu não é... careca?",
	#monge
	"Mas... ",
	"...",
	"Todo eunuco é careca, mas nem todo careca é eunuco",
	#natanael
	"Papo de eunuco...",
	"Enfim, atualização de agora não teve muita coisa...",
	"Só a aparição de alguém com estilo e cabelo hehehe",
	#monge
	"Pelo menos eu tô no ícone do jogo",
	#NATANEL
	"Ninguém liga!",
	"Enfim, sem muita coisa por hora, mas em breve mais coisas virão no jogo",
	#monge
	"Me desculpem, essas semanas foram puxadas",
	"Mas na encolha tiveram coisas feitas ok, só não tão 100% prontas",
	#natanael
	"Isso aí. Agora eu vou ter que sair momentaneamente", #natanael some
	#monge
	"Isso mesmo desgraçado, some mesmo!",
	"Eunuco...",
	"Era só o que me faltava...",
	"E só pra você saber, eunuco não é o mesmo que careca",
	"Na verdade é um"
	
	#HORA DA ESCOLHA
]

var dialogTUTORIALTREINO = [
	"",
	"para fazer o treino e muito simples",
	"voce escolhe a musica",
	"e conforme ela toca voce aperta os botoes correspondentes nos inimigos",
	"mas cuidado pra nao errar o botao e levar uma na cara hehe",
	"boa sorte nesse 'treino' ",
]
#======================================================CAMINHO 1=====================
var help = true

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
	#if ControleDeSave.antsySEGREDO == false:
	dialog = dialogANTSY
	
	#if ControleDeSave.antsySEGREDO == true:
		#dialog = dialogTUTORIALTREINO
		#$Sprite/AnimationPlayer.play("aparicao1")
	
		
	MenuPrincipalMonge.hide()
	load_dialog()
	

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
		hide()
		dialog_index = 0
		load_dialog()
		
	if $RichTextLabel.bbcode_text == "para fazer o treino e muito simples":
		$Sprite/AnimationPlayer.play("aparicao22")
	
	
	if $RichTextLabel.bbcode_text == "Diário do dev- 003":
		$Sprite/AnimationPlayer.play("aparicao1")
		
	
	#=====================================================dialogPath1
	
	#====================================================================
	#====================================================dialogpath2
	
	
	
		
	#==================================================================
	
	
		
	if $RichTextLabel.bbcode_text == "boa sorte nesse 'treino' ":
		ControleDeSave.TUTORIALTREINO = true
		ControleDeSave.save_inicio()



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
	
	
	#==================================================================
	if $RichTextLabel.bbcode_text == "fimSEMTUTORIAL":
		idaProTreino = true
		hide()
		IRTREINO()
		
		
	if $RichTextLabel.bbcode_text == "fimTUtoria":
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



func IRTREINO():
	#ControleDeSave.TUTORIALMEDITA = true
	#ControleDeSave.save_inicio()
	ttransition.change_scene("res://Scenes/Personagens/MongeFodao/MenuStyleMongeJooJ/MenuPrincipalMonge.tscn")

func IRSEGREDOS():
	ttransition.change_scene("res://Scenes/MenuDosSegredos.tscn")




func _on_NEXT_pressed():
	visualModeNovel += 1
	load_dialog()
