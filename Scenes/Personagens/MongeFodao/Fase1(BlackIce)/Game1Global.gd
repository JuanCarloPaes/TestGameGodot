extends Node

var faseAtual = "res://Scenes/Personagens/MongeFodao/Fase1(BlackIce)/Game1Global.tscn"

func _ready():
	#$"/root/MenuPrincipal".hide()
	MenuPrincipalMonge.pontosFases = "Musica1/pontosBlackIcE"
	MenuPrincipalMonge.hide()
	$danoFloridaNimation.play("countdown")
	$fimDeFase.start()
	Engine.time_scale = 1


func _on_danoFlorida_body_entered(body):
	if body.has_method("DESTRUIR"):
		$danoFloridaNimation.play("dano")


func _on_fimDeFase_timeout():
	$AUDIO.queue_free()
	$MongeFodao/ButtonQuit.show()
	$MongeFodao/ButtonRetry.show()
	$MongeFodao/CanvasLayer/TouchScreenButton.hide()
	$MongeFodao/CanvasLayer/TouchScreenButton3.hide()
	$MongeFodao.HighScore()


func _on_ButtonRetry_pressed():
	ttransition.change_scene("res://Scenes/Personagens/MongeFodao/Fase1(BlackIce)/Game1Global.tscn")


func _on_ButtonQuit_pressed():
	ttransition.change_scene($"/root/MenuPrincipalMonge".menuMonge)
