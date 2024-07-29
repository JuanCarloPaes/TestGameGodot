extends Control

var dialog = [
	"",
	"( você talvez esteja perdido )",
	"( ou quem sabe curioso )",
	"( seja o caso que for, você está agora prestes a chegar lá... )",
	"( no famoso templo da iluminação )",
	"( afim de conseguir seguir o caminho alternativo da paz )",
	" "
]



var pros

var dialog_index = 0

var INICIO = true

var finished = false

var visualModeNovel = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	MenuPrincipalMonge.hide()
	yield(get_tree().create_timer(1),"timeout")
	show()
	load_dialog()
	$Sprite/AnimationPlayer.play("aparicao1")
	

# warning-ignore:unused_argument
func _process(delta):
	$"next-indicator".visible = finished
	#if (Input.is_action_just_pressed("golpeE") or _on_NEXT_pressed()) and finished == true:
		#visualModeNovel += 1
		#load_dialog()
		
		

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
		INICIO = false
		finished = false

	#============================================================================
	#==================dialogo meditacao ============
	if $RichTextLabel.bbcode_text == "...":
		$Sprite/AnimationPlayer.play("aparicao3")
	
	if $RichTextLabel.bbcode_text == "heh, isso ficou meio confuso falando assim":
		$Sprite/AnimationPlayer.play("aparicao5")
	
	
	
		
	if $RichTextLabel.bbcode_text == " ":
		ttransition.change_scene("res://Scenes/ModoHistoria/IntroTop/IntroInicio.tscn")


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


	pass # Replace with function body.
func _on_Opcao1_pressed():
	dialog_index = 0
	$Opcao1.hide()
	load_dialog()





func _on_NEXT_pressed():
	visualModeNovel += 1
	load_dialog()
