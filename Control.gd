extends Control

var rng = RandomNumberGenerator.new()
var cu = ["cu", "pau", "shawin"]

func _ready():
	
	
	
	MenuPrincipalMonge.hide()
	ControleDeSave.load_inicio()
	yield(get_tree().create_timer(1),"timeout")
	rng.randomize()
	var randomo = rng.randf_range(0,7)
	if randomo > 5:
		opening1()
	elif randomo >2 and randomo <= 5 :
		opening2()
	else:
		opening3()
	#$Label.show()

func _on_Button_pressed():
	pass
	#ttransition.change_scene("res://Scenes/Personagens/MongeFodao/MenuStyleMongeJooJ/MenuPrincipalMonge.tscn")

func introAleatoria():
	var randomo = randi()%4+1
	if randomo == 2:
		opening2()
	else:
		opening1()

func opening1():
	$passos.play()
	yield(get_tree().create_timer(2),"timeout")
	$AnimatedSprite.show()
	$AnimatedSprite.play("inicio")
	yield($AnimatedSprite,"animation_finished")
	$passos.queue_free()
	$lancaChama.play()
	$AnimatedSprite.play("inicioMeio")
	yield($AnimatedSprite,"animation_finished")
	$Sprite.show()
	$AnimatedSprite.play("meio")
	$Joe.play("Opening")
	yield($Joe,"animation_finished")
	$Sprite2.show()
	$lancaChama.queue_free()
	$falaJakenEXT.play("falasso")
	$AnimatedSprite.play("fugindo")
	yield($AnimatedSprite,"animation_finished")
	$AnimatedSprite.hide()
	primeiravez()
	
func opening2():
	$PersonagensSurrando.show()
	$AnimationPlayer.play("MongeIntro")
	yield($AnimationPlayer,"animation_finished")
	primeiravez()

func opening3():
	$EntradasDiferenciadas.show()
	$AnimationPlayer.play("SailorMoonIntro")
	yield($AnimationPlayer,"animation_finished")
	primeiravez()

func irProMenu():
	ttransition.change_scene("res://Scenes/Personagens/MongeFodao/MenuStyleMongeJooJ/MenuPrincipalMonge.tscn")

func primeiravez():
	if ControleDeSave.INTRO == false:
		ttransition.change_scene("res://Scenes/ModoHistoria/IntroTop/inicioDeTudo.tscn")
	else:
		irProMenu()




