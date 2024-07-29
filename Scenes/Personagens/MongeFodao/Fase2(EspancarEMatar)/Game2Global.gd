extends Node

var faseAtual1 = "res://Scenes/Personagens/MongeFodao/Fase2(EspancarEMatar)/Game2Global.tscn"

func _ready():
	MenuPrincipalMonge.pontosFases = "Musica2/pontoEspancEmatar"
	#$"/root/MenuPrincipal".hide()
	MenuPrincipalMonge.hide()
	$danoFloridaNimation.play("countdown")
	$fimDeFase.start()
	Engine.time_scale = 1


func _on_danoFlorida_body_entered(body):
	if body.has_method("DESTRUIR"):
		$danoFloridaNimation.play("dano")


func _on_fimDeFase_timeout():
	$EspancarEmatar.queue_free()
	$MongeFodao/ButtonQuit.show()
	$MongeFodao/ButtonRetry.show()
	$MongeFodao/CanvasLayer/TouchScreenButton.hide()
	$MongeFodao/CanvasLayer/TouchScreenButton3.hide()
	$MongeFodao.HighScore()


func _on_ButtonRetry_pressed():
	ttransition.change_scene(faseAtual1)


func _on_ButtonQuit_pressed():
	ttransition.change_scene($"/root/MenuPrincipalMonge".menuMonge)
