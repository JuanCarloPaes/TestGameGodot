extends Control

onready var secreto = $LineEdit

var ok = false

# Called when the node enters the scene tree for the first time.
func _ready():
	MenuPrincipalMonge.hide()
	ControleDeSave.load_inicio()
	secreto.connect("text_entered", self, "escrever")

# warning-ignore:unused_argument
func _physics_process(delta):
	pass

# warning-ignore:unused_argument
func _process(delta):
	if ControleDeSave.inuyasha == true:
		$BotaoInuyasha.show()
	if ControleDeSave.necrose == true:
		$BotaoNecrose.show()
	if ControleDeSave.amandaGaiola == true:
		$BotaoAmandaGaiola.show()
	if ControleDeSave.urbanReign == true:
		$BotaoUrbanReign.show()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ENTER:
			secreto.grab_focus()
		if event.pressed and event.scancode == KEY_ESCAPE:
			secreto.release_focus()

func escrever(text):
	if text == "Bundazul666 Sua mãe":
		$UnlockMaster.show()
	secreto.text = ""
	
	if text == "antsy":
		ControleDeSave.antsySEGREDO = true
		ControleDeSave.save_inicio()
		$DialogSegredos/Sprite/AnimationPlayer.play("aparicao1")
		$DialogSegredos.antsy()
		$DialogSegredos.show()
	secreto.text = ""

	if text == "furry" or text == "loli":
		$DialogSegredos.nojo()
		$DialogSegredos.show()
	secreto.text = ""
	
	if text == "inuyasha" or text == "inu yasha":
		ControleDeSave.inuyasha = true
		ControleDeSave.save_inicio()
		$DialogSegredos.inuyashismo()
		$DialogSegredos.show()
	secreto.text = ""
	
	if text == "amanda gaiola" or text == "amanda da gaiola" or text == "vampira da gaiola":
		ControleDeSave.amandaGaiola = true
		ControleDeSave.save_inicio()
		$DialogSegredos.amandagaiola()
		$DialogSegredos.show()
	secreto.text = ""
	
	if text == "necrose" or text == "necrose atomica":
		ControleDeSave.necrose = true
		ControleDeSave.save_inicio()
		$DialogSegredos.necrose()
		$DialogSegredos.show()
	secreto.text = ""
	
	if text == "urban reign ps2" or text == "urban reign":
		ControleDeSave.urbanReign = true
		ControleDeSave.save_inicio()
		$DialogSegredos.urbanReign()
		$DialogSegredos.show()
	secreto.text = ""
	

func _on_Button_pressed():
	ttransition.change_scene(MenuPrincipalMonge.menuMonge)




func _on_BotaoInuyasha_pressed():
	$DialogSegredos.inuyashismo()
	$DialogSegredos.show()


func _on_BotaoNecrose_pressed():
	$DialogSegredos.necrose()
	$DialogSegredos.show()


func _on_BotaoAmandaGaiola_pressed():
	$DialogSegredos.amandagaiola()
	$DialogSegredos.show()


func _on_BotaoUrbanReign_pressed():
	$DialogSegredos.urbanReign()
	$DialogSegredos.show()
