extends Node

var faseAtual = "res://Scenes/Personagens/MongeFodao/Fase7(HybridMoments)/Game7Global.tscn"

func _ready():
	$Baki/countdown.hide()
	#$"/root/MenuPrincipal".hide()
	MenuPrincipalMonge.pontosFases = "Musica7/pontosHybridMoments"
	MenuPrincipalMonge.hide()
	$fimDeFase.start()
	$Baki/countdown.show()
	$danoFloridaNimation.play("countdown")
	Engine.time_scale = 1


func _on_danoFlorida_body_entered(body):
	if body.has_method("DESTRUIR"):
		$danoFloridaNimation.play("dano")
	


func _on_fimDeFase_timeout():
	$HybridMomentsMisfits.queue_free()
	$Baki/ButtonQuit.show()
	$Baki/ButtonRetry.show()
	$Baki/CanvasLayer/TouchScreenButton.hide()
	$Baki/CanvasLayer/TouchScreenButton3.hide()
	$Baki.HighScore()


func _on_ButtonRetry_pressed():
	ttransition.change_scene(faseAtual)


func _on_ButtonQuit_pressed():
	ttransition.change_scene($"/root/MenuPrincipalMonge".menuMonge)
