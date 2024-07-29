extends Control

var segredosInuyasha = 0
var escolhaiori = false
var escolhaMonge = true
var INTRO = false
var TUTORIALTREINO = false
var TUTORIALMEDITA = false
var antsySEGREDO = false

#segredosCODIGOS
var inuyasha = false
var amandaGaiola = false
var necrose = false
var urbanReign = false

var segredos_file = "user://segredos.save"
var inicio_file = "user://inicio.save"

var menuMonge = "res://Scenes/Personagens/MongeFodao/MenuStyleMongeJooJ/MenuPrincipalMonge.tscn"
var menuIori #nao definido ainda

# Called when the node enters the scene tree for the first time.
func _ready():
	MenuPrincipalMonge.hide()
	#save_inicio() # caso de merda, usar esse troco
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	---------------------------------------------------------------
# warning-ignore:unused_argument
func _process(delta):
	if ControleDeSave.TUTORIALMEDITA == true or ControleDeSave.TUTORIALTREINO == true:
		ControleDeSave.INTRO = true
		ControleDeSave.save_inicio()


func save_inicio():
	#pass
	var f = File.new()
	f.open(inicio_file, File.WRITE)
	f.store_var(escolhaMonge)
	f.store_var(INTRO)
	f.store_var(TUTORIALMEDITA)
	f.store_var(TUTORIALTREINO)
	f.store_var(antsySEGREDO)
	
	#SEGREDOScodigos
	f.store_var(inuyasha)
	f.store_var(amandaGaiola)
	f.store_var(necrose)
	f.store_var(urbanReign)
	
	f.close()
	

func load_inicio():
	var f = File.new()
	if f.file_exists(inicio_file):
		f.open(inicio_file, File.READ)
		escolhaMonge = f.get_var()
		INTRO = f.get_var()
		TUTORIALMEDITA = f.get_var()
		TUTORIALTREINO = f.get_var()
		antsySEGREDO = f.get_var()
		#SEGREDOScodigos
		inuyasha = f.get_var()
		amandaGaiola = f.get_var()
		necrose = f.get_var()
		urbanReign = f.get_var()
		
		f.close()
