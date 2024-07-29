extends Node2D
#INIMIO QUE SEGUE

var vidacheia = preload ("res://Ritmic Fighter assets/Vida/vidas1.png")
var vidameio = preload ("res://Ritmic Fighter assets/Vida/vidas5.png")
var vidavazia = preload ("res://Ritmic Fighter assets/Vida/vidas9.png")

var existencia = true
var speed = 260 #leva 1.38 segundos pra alcançar a "distância perfeita" pro personagem atacar
var direcao = Vector2()

onready var barradevida = $TextureProgress

func _physics_process(delta):
	global_rotation = 0

func _ready():
    hide()
    if get_parent() and get_parent().get("max_health"):
        barradevida.max_value = get_parent().max_health
	
func update_vida(valor):
	barradevida.texture_progress = vidacheia
	if valor < barradevida.max_value * 0.5:
		barradevida.texture_progress = vidameio
	if valor < barradevida.max_value *0.3:
		barradevida.texture_progress = vidavazia
	if valor < barradevida.max_value:
		show()
	barradevida.value = valor
