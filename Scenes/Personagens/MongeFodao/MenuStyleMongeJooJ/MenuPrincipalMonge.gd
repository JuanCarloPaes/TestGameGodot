extends Control


var pontosFases = "Musica1/pontosBlackIcE"

#save set 1
onready var fase1 = $Musica1/pontosBlackIcE
onready var fase2 = $Musica2/pontoEspancEmatar
onready var fase3 = $Musica3/pontosTheDemonIsGod
onready var fase4 = $Musica4/pontosOverInAFlash
onready var fase5 = $Musica5/pontosTheyCameFromUnder
onready var fase6 = $Musica6/pontosMove
onready var fase7 = $Musica7/pontosHybridMoments
onready var fase8 = $Musica8/pontosGASOLINA
onready var fase9 = $Musica9/pontosGenteRuim
onready var fase10 = $Musica10/pontosDescendoCanelada
onready var fase11 = $Musica11/pontosPoliceState


var settings_file = "user://settings.save"
var settings_file2 = "user://settings2.save"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var faseAtual = "res://Scenes/Personagens/MongeFodao/Fase1(BlackIce)/Game1Global.tscn"
var menuMonge = "res://Scenes/Personagens/MongeFodao/MenuStyleMongeJooJ/MenuPrincipalMonge.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	show()
	ControleDeSave.load_inicio()
	load_settings()
	load_settings2()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	---------------------------------------------------------------


func da(param):
	comparar(param)
	
func visiblo():
	self.visible = true

func desvisiblo():
	self.visible = false
	
func comparar(param):
	if int(param) > int(get_node(pontosFases).text):
		get_node(pontosFases).text = str(param)
		save_settings()

func save_settings():
	var f = File.new()
	f.open(settings_file, File.WRITE)
	f.store_var(fase1.text)
	f.store_var(fase2.text)
	f.store_var(fase3.text)
	f.store_var(fase4.text)
	f.store_var(fase5.text)
	f.store_var(fase6.text)
	f.store_var(fase7.text)
	f.store_var(fase8.text)
	f.store_var(fase9.text)
	f.store_var(fase10.text)
	f.store_var(fase11.text)
	f.close()

func save_settings2():
	pass
	
	

func load_settings():
	var f = File.new()
	if f.file_exists(settings_file):
		f.open(settings_file, File.READ)
		fase1.text = f.get_var()
		fase2.text = f.get_var()
		fase3.text = f.get_var()
		fase4.text = f.get_var()
		fase5.text = f.get_var()
		fase6.text = f.get_var()
		fase7.text = f.get_var()
		fase8.text = f.get_var()
		fase9.text = f.get_var()
		fase10.text = f.get_var()
		fase11.text = f.get_var()
		f.close()

func load_settings2():
	pass
		
		

func _on_Resetar_progresso_pressed():
	$Musica1/pontosBlackIcE.text = str(0)
	$Musica2/pontoEspancEmatar.text = str(0)
	$Musica3/pontosTheDemonIsGod.text = str(0)
	$Musica4/pontosOverInAFlash.text = str(0)
	$Musica5/pontosTheyCameFromUnder.text = str(0)
	$Musica6/pontosMove.text = str(0)
	$Musica7/pontosHybridMoments.text = str(0)
	$Musica8/pontosGASOLINA.text = str(0)
	$Musica9/pontosGenteRuim.text = str(0)
	$Musica10/pontosDescendoCanelada.text = str(0)
	$Musica11/pontosPoliceState.text = str(0)
	save_settings()
#----------------------------------------------------------------------------------------------

func _on_Personagens_pressed():
	ttransition.change_scene("res://Scenes/MenuPersonagens.tscn")
#_-----------------------------------------------------------


func _on_Musica1_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase1(BlackIce)/Game1Global.tscn"
	#pontosFases = "Musica1/pontosBlackIcE"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)


func _on_Musica2_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase2(EspancarEMatar)/Game2Global.tscn"
	#pontosFases = "Musica2/pontoEspancEmatar"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)


func _on_Musica3_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase3(TheDemonIsGod)/Game3Global.tscn"
	#pontosFases = "Musica3/pontosTheDemonIsGod"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)
	
	
func _on_Musica4_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase4(OverInAFlash)/Game4Global.tscn"
	#pontosFases = "Musica4/pontosOverInAFlash"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)
	



func _on_Musica5_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase5(TheyCameFromUnderGround)/Game5Global.tscn"
	#pontosFases = "Musica5/pontosTheyCameFromUnder"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)

func _on_Musica6_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase6(Move)/Game6Global.tscn"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)

func _on_Musica7_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase7(HybridMoments)/Game7Global.tscn"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)
	
func _on_Musica8_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase8(Gasolina)/Game8Global.tscn"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)


func _on_Musica9_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase9(GenteRuim)/Game9Global.tscn"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)


func _on_Musica10_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase10(DescendoCanelada)/Game10Global.tscn"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)


func _on_Musica11_pressed():
	MenuPrincipalMonge.faseAtual = "res://Scenes/Personagens/MongeFodao/Fase11(NYPoliceState)/Game11Global.tscn"
	ttransition.change_scene(MenuPrincipalMonge.faseAtual)


func _on_BotaoSecreto_pressed():
	$DialogTreinoTop.show()
	$aviso.hide()

func _on_Segredos_pressed():
	if ControleDeSave.TUTORIALMEDITA == false:
		ttransition.change_scene("res://Scenes/ModoHistoria/IntroTop/IntroMEDITACAO.tscn")
	else:
		ttransition.change_scene("res://Scenes/MenuDosSegredos.tscn")

func anuncioVideo():
	$MenuADs.show_ad_interstitial()

func anuncioBanner():
	$MenuADs.show_ad_banner()


func _on_Creditos_pressed():
	$Creditos.hide()
	$Creditos2.show()
	$Creditos2/Label2.show()


func _on_Creditos2_pressed():
	$Creditos2.hide()
	$Creditos.show()



