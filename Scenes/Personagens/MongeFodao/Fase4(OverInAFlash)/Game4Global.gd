extends Node

var faseAtual = "res://Scenes/Personagens/MongeFodao/Fase4(OverInAFlash)/Game4Global.tscn"

func _ready():
	$MongeFodao/countdown.hide()
	#$"/root/MenuPrincipal".hide()
	MenuPrincipalMonge.pontosFases = "Musica4/pontosOverInAFlash"
	MenuPrincipalMonge.hide()
	$fimDeFase.start()
	yield (get_tree().create_timer(1.9),"timeout")
	$MongeFodao/countdown.show()
	$danoFloridaNimation.play("countdown")
	Engine.time_scale = 1


func _on_danoFlorida_body_entered(body):
	if body.has_method("DESTRUIR"):
		$danoFloridaNimation.play("dano")


func _on_fimDeFase_timeout():
	$OverInAFlash.queue_free()
	$OverInAFlash.queue_free()
	$MongeFodao/ButtonQuit.show()
	$MongeFodao/ButtonRetry.show()
	$MongeFodao/CanvasLayer/TouchScreenButton.hide()
	$MongeFodao/CanvasLayer/TouchScreenButton3.hide()
	$MongeFodao.HighScore()


func _on_ButtonRetry_pressed():
	ttransition.change_scene(faseAtual)


func _on_ButtonQuit_pressed():
	ttransition.change_scene($"/root/MenuPrincipalMonge".menuMonge)
