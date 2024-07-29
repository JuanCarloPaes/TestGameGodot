extends Control

var dialog = [
	"",
	"caceta",
	"kunimitsu,[shake rate=100 level=20] sushi[/shake] subaru",
	"paxton kekkerson maxewll"
]

var dialog_index = 0

var finished = false

var visualModeNovel = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	MenuPrincipalMonge.hide()
	load_dialog()

# warning-ignore:unused_argument
func _process(delta):
	$"next-indicator".visible = finished
	if Input.is_action_just_pressed("golpeE") and finished == true:
		visualModeNovel += 1
		load_dialog()
		
	if Input.is_action_just_pressed("golpe"):
		REload_dialog()
		
	if visualModeNovel >= 1:
		print("cu")
		$TextureButton.show() 
	

func load_dialog():
	$ControleVeloz.start()
	$Tween.playback_speed = 1
	finished = false
	dialog_index += 1
	if dialog_index > dialog.size()-1:
		dialog_index = dialog.size()-1
	$RichTextLabel.bbcode_text = dialog[dialog_index]
	$RichTextLabel.percent_visible = 0
	$Tween.interpolate_property(
		$RichTextLabel, "percent_visible" , 0, 1, 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
	)
	$Tween.start()

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
		$RichTextLabel, "percent_visible" , 0, 1, 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
	)
	$Tween.start()
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_Tween_tween_completed(object, key):
	print($Tween.playback_speed)
	finished = true


func _on_TextureButton_pressed():
	$Tween.playback_speed = 9
	_on_ControleVeloz_timeout()


func _on_ControleVeloz_timeout():
	$TextureButton.hide()
	print("pinto")
	visualModeNovel = 0
