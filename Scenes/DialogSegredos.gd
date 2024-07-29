extends Control

var dialog = [
	""
]

var dialogG = [
	"",
	"Diário do dev- 002",
	"E aí meus queridos",
	"Demorei que só pra soltar essa atualização...",
	"Foi mal aí minha gente",
	"Volta às aulas foi pesada",
	"E eu também... Tive aquela clássica preguiça...",
	"Mas as atualizações vão vir no máximo possível",
	"E também era pra vir um certo personagem novo",
	"Tá quase semi pronto, só falta leves ajustes",
	"Aí ele vem que vem",
	"Por sinal... vocês acham que eu deveria dublar?",
	"Tipo colocar minha voz (ou uma voz aí muito massa) no Monge?",
	"Quem tem meu número manda no ZAP aquele voto de sim ou não",
	"Enos meus queridos",
	"Espero que se divirtam com esse jogo lutadeiro ritmico",
	"E não esqueçam que"
	#HORA DA ESCOLHA
]

#======================================================================================================================================

var dialogNOJO = [
	"",
	"...",
	"que tipo de pessoa você acha que eu sou hein ?"
]

var dialogoPRAISEinuyasha = [
	"",
	"então das três, uma...",
	"ou você concorda que inuyasha é o melhor anime de todos...",
	"ou você concorda comigo que Inuyasha é um dos melhores animes de todos os tempos ",
	"ou só tentou tirar onda colocando nomes aleatórios de animes",
	"seja como for, Inuyasha é um excelente anime (e meu favorito)",
	"bom pra cacete",
	"recomendadíssimo",
	"Rumiko sensei , voce é a mais foda das mangakás",
	"espero um dia te conhecer",
	"e sim, eu estou tendo um surto esquizofrênico falando isso num jogo underground",
	"e ainda por cima em português, no menu de segredos e codigos ocultos do dito jogo",
	"mas como já dizia o Leandro Hassum : Fooooooooooooooddddaaaaa  Ssssseeeeeeeee"
]

var dialogAmandaGaiola = [
	"",
	"aos rpjoojeiros ...",
	"seja qual de vocês tenha digitado isso...",
	"aí vai um poema :",
	"era uma vez uma vampira amazonense",
	"que decidiu ir para o rio de janeiro por puro nonsense",
	"com a fama de patricinha e jeito de mimada",
	"ocorreu o que todo mundo imaginava",
	"ela foi pra um lugar chamado gaiola e ganhou a fama de rodada",
]

var dialogNecrose = [
	"",
	"você quis dizer...",
	"o melhor desenhista da atualidade ??",
	"aposto que sim",
	"por sinal, necrose bicho",
	"faz a segunda temporada de rei dos tabagistas na moralzinha",
	"e valeu por agraciar o mundo com a felicidade de desenhos extremos das ruas",
	"e espalhar o anti pug-ismo",
	"tu é o mais foda"
]

var dialogUrbanReign = [
	"",
	"ahhh vejo que você é alguém de cultura",
	"ou me conhece pessoalmente...",
	"ou é bastante observador",
	"seja como for, o ponto é o seguinte",
	"urban reign é simplismente uma obra de arte",
	"para todos os jogos de luta 3d, é um exemplo",
	"jogo formoso, maravilhoso, sem falhas",
	"enfim, o ponto é que esse jogo é excelente e precisa de um remake",
	"já que a NAMCO nunca que vai fazer isso, porque que o jogo vendeu pouco",
	"eu me proponho a fazer isso nem que seja colocando um outro nome",
	"mas mantendo o mesmo estilo dessa jóia rara",
	"e quem sabe até mesmo jogos temáticos nesse estilo...",
	"(tipo um jogo do kengan ashura hein ? hehehe)",
	"seja como for, recomendo testarem esse jogo no emulador de ps2 (o PCSX2)",
	"vale completamente a pena, e o melhor de tudo",
	"roda em quase tudo que é pc"
]
#======================================================CAMINHO 1=====================

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
	load_dialog()
	

# warning-ignore:unused_argument
func _process(delta):
	$"next-indicator".visible = finished
	#if Input.is_action_just_pressed("golpeE") and finished == true:
		#visualModeNovel += 1
		#load_dialog()
#	if Input.is_action_just_pressed("golpe"):
#		visualModeNovel += 1
#		REload_dialog()
		
		

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
		#load_dialog()
	
	if $RichTextLabel.bbcode_text == "de tempos em tempos vão sair músicas novas e personagens novos também":
		$Sprite/AnimationPlayer.play("aparicao2")
	
	if $RichTextLabel.bbcode_text == "segundo de tudo...":
		$Sprite/AnimationPlayer.play("aparicao12")
	
	if $RichTextLabel.bbcode_text == "códigos secretos e o resto do modo historia tambem hehe":
		$Sprite/AnimationPlayer.play("aparicao6")
	#=====================================================dialogPath1
	if $RichTextLabel.bbcode_text == "por ultimo...":
		$Sprite/AnimationPlayer.play("aparicao12")
	
	#====================================================================
	#====================================================dialogpath2
	
	if $RichTextLabel.bbcode_text == "Diário do dev- 002":
		$Sprite/AnimationPlayer.play("aparicao1")
		
	if $RichTextLabel.bbcode_text == "E aí meus queridos":
		$Sprite/AnimationPlayer.play("aparicao2")
	
	if $RichTextLabel.bbcode_text == "Demorei que só pra soltar essa atualização...":
		$Sprite/AnimationPlayer.play("aparicaoPEDIDO")
	
	if $RichTextLabel.bbcode_text == "Volta às aulas foi pesada":
		$Sprite/AnimationPlayer.play("aparicao10")
	
	if $RichTextLabel.bbcode_text == "Mas as atualizações vão vir no máximo possível":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	if $RichTextLabel.bbcode_text == "E também era pra vir um certo personagem novo":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "Por sinal... vocês acham que eu deveria dublar?":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "Quem tem meu número manda no ZAP aquele voto de sim ou não":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	if $RichTextLabel.bbcode_text == "Espero que se divirtam com esse jogo lutadeiro ritmico":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	#=============================================================inuyasha
	
	if $RichTextLabel.bbcode_text == "então das três, uma..." or $RichTextLabel.bbcode_text == "seja como for, Inuyasha é um excelente anime (e meu favorito)":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "ou só tentou tirar onda colocando nomes aleatorios de animes":
		$Sprite/AnimationPlayer.play("aparicao7")
	
	if $RichTextLabel.bbcode_text == "recomendadíssimo" or $RichTextLabel.bbcode_text == "e sim, eu estou tendo um surto esquizofrênico falando isso num jogo underground":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	if $RichTextLabel.bbcode_text == "rumiko sensei , voce é a mais foda das mangakás" or $RichTextLabel.bbcode_text == "mas como já dizia o Leandro Hassum : Fooooooooooooooddddaaaaa  Ssssseeeeeeeee":
		$Sprite/AnimationPlayer.play("aparicao2")
	
	#==================================================================
	#===============================================================amandaGaiola
	if $RichTextLabel.bbcode_text == "aos rpjoojeiros ..." or $RichTextLabel.bbcode_text == "com a fama de patricinha e jeito de mimada":
		$Sprite/AnimationPlayer.play("aparicao8")
	
	if $RichTextLabel.bbcode_text == "ai vai um poema :" or $RichTextLabel.bbcode_text == "ela foi pra um lugar chamado gaiola e ganhou a fama de rodada":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	if $RichTextLabel.bbcode_text == "que decidiu ir para o rio de janeiro por puro nonsense":
		$Sprite/AnimationPlayer.play("aparicao7")
		
	#===================================================================
	#===================================================================NECROSE
	if $RichTextLabel.bbcode_text == "o melhor desenhista da atualidade ??" or $RichTextLabel.bbcode_text == "e valeu por agraciar o mundo com a felicidade de desenhos extremos das ruas":
		$Sprite/AnimationPlayer.play("aparicao8")
		
	if $RichTextLabel.bbcode_text == "faz a segunda temporada de rei dos tabagistas na moralzinha":
		$Sprite/AnimationPlayer.play("aparicaoPEDIDO")
		
	if $RichTextLabel.bbcode_text == "e espalhar o anti pug-ismo":
		$Sprite/AnimationPlayer.play("aparicao5")
		
	#===================================================================
	#===================================================================URBAN REIGN
	if $RichTextLabel.bbcode_text == "ahhh vejo que voce é alguém de cultura" or $RichTextLabel.bbcode_text == "seja como for, o ponto é o seguinte" or $RichTextLabel.bbcode_text == "eu me proponho a fazer isso nem que seja colocando um outro nome":
		$Sprite/AnimationPlayer.play("aparicao8")
		
	if $RichTextLabel.bbcode_text == "ou me conhece pessoalmente...":
		$Sprite/AnimationPlayer.play("aparicao7")
		
	if $RichTextLabel.bbcode_text == "enfim, o ponto é que esse jogo é excelente e precisa de um remake" or $RichTextLabel.bbcode_text == "(tipo jogo do kengan ashura hein ? hehehe)" or $RichTextLabel.bbcode_text == "roda em quase tudo que é pc":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	if $RichTextLabel.bbcode_text == "seja como for, recomendo testarem esse jogo no emulador de ps2 (o PCSX2)":
		$Sprite/AnimationPlayer.play("aparicaoPEDIDO")
	#===================================================================
	
	


#func REload_dialog():
#	$ControleVeloz.start()
#	$Tween.playback_speed = 1
#	finished = false
#	dialog_index -= 1
#	if dialog_index < 1:
#		dialog_index = 1
#	$RichTextLabel.bbcode_text = dialog[dialog_index]
#	$RichTextLabel.percent_visible = 0
#	$Tween.interpolate_property(
#		$RichTextLabel, "percent_visible" , 0, 1, 0.2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
#	)
#	$Tween.start()
	
	

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

func nojo():
	dialog = dialogNOJO
	$Sprite/AnimationPlayer.play("aparicaoNOJO")
	load_dialog()

func antsy():
	dialog = dialogG
	$Sprite/AnimationPlayer.play("aparicao1")
	load_dialog()

func inuyashismo():
	dialog = dialogoPRAISEinuyasha
	$Sprite/AnimationPlayer.play("aparicao1")
	load_dialog()

func amandagaiola():
	dialog = dialogAmandaGaiola
	$Sprite/AnimationPlayer.play("aparicao1")
	load_dialog()

func necrose():
	dialog = dialogNecrose
	$Sprite/AnimationPlayer.play("aparicao1")
	load_dialog()

func urbanReign():
	dialog = dialogUrbanReign
	$Sprite/AnimationPlayer.play("aparicao1")
	load_dialog()
