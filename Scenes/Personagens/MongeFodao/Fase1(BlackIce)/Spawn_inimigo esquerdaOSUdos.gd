extends Node

const bandido2 = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Esquerda2.tscn") #soco
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Esquerda.tscn") #chute
const segurancaGAY = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoEsquerda2.tscn") #soco
const nikoFodase = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoEsquerda.tscn") #chute
#var cacete = true
#var monstrose = 4

func _ready():
	yield (get_tree().create_timer(0.06),"timeout")
	spawn() #batida 2
	yield (get_tree().create_timer(0.46),"timeout")
	spawn3() #batida 4
	yield (get_tree().create_timer(1.27),"timeout")
	spawn() #batida 5
	yield (get_tree().create_timer(0.48),"timeout")
	spawn3() #batda 7
	yield (get_tree().create_timer(0.53),"timeout")
	#spawn() #atida 9
	yield (get_tree().create_timer(0.48),"timeout")
	spawn3() #batida 11
	yield (get_tree().create_timer(0.23),"timeout")
	#spawn() #batida 12
	yield (get_tree().create_timer(0.71),"timeout")
	spawn3() #batida 18
	yield (get_tree().create_timer(0.09),"timeout")
	#spawn() #batida 19
	yield (get_tree().create_timer(0.03),"timeout")
	#spawn() #batida 20
	onda2()
	yield (get_tree().create_timer(4.15),"timeout")
	onda3()
	yield (get_tree().create_timer(5.49),"timeout")
	onda4()
	yield (get_tree().create_timer(4.16),"timeout")
	onda5()
	
#soco================================================
func spawn():
	var inimigo2 = bandido2.instance()
	var pos = self.global_position
	inimigo2.set_position(pos)
	get_node("container").add_child(inimigo2)
	yield( get_tree(), "idle_frame")
	
func spawn2():
	var segur = segurancaGAY.instance()
	var pos = self.global_position
	segur.set_position(pos)
	get_node("container").add_child(segur)
	yield(get_tree(),"idle_frame")
#======================================================

#chute=================================================
func spawn3():
	var inimigo = magoViado.instance()
	var pos = self.global_position
	inimigo.set_position(pos)
	get_node("container").add_child(inimigo)
	yield( get_tree(), "idle_frame")

func spawn4():
	var segur2 = nikoFodase.instance()
	var pos = self.global_position
	segur2.set_position(pos)
	get_node("container").add_child(segur2)
	yield(get_tree(),"idle_frame")
#======================================================

func onda2():
	yield (get_tree().create_timer(0.43),"timeout")
	#spawn() #batida 24
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn2() #batida 26
	yield (get_tree().create_timer(0.68),"timeout")
	spawn3() #batida 29
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 30
	yield (get_tree().create_timer(0.41),"timeout")
	#spawn3() #batida 32
	yield (get_tree().create_timer(0.24),"timeout")
	spawn3() #batida 33
	yield (get_tree().create_timer(0.84),"timeout")
	#spawn2() #batida 37
	yield (get_tree().create_timer(0.09),"timeout")
	#spawn() #batida 38
	yield (get_tree().create_timer(0.05),"timeout")
	spawn2() #batida 39
	yield (get_tree().create_timer(0.42),"timeout")
	#spawn() #batida 42
	yield (get_tree().create_timer(0.04),"timeout")
	#spawn() #batida 43
	yield (get_tree().create_timer(0.65),"timeout")
	#spawn3() #batida 47
	yield (get_tree().create_timer(0.03),"timeout")
	#spawn() #batida 48
	
func onda3():
	yield (get_tree().create_timer(0.67),"timeout")
	spawn2() #batida 52
	yield (get_tree().create_timer(0.05),"timeout")
	#spawn() #batida 53
	yield (get_tree().create_timer(0.37),"timeout")
	#spawn() #batida 56
	yield (get_tree().create_timer(0.12),"timeout")
	#spawn() #batida 58
	yield (get_tree().create_timer(0.24),"timeout")
	#spawn() #batida 60
	yield (get_tree().create_timer(0.22),"timeout")
	spawn() #batida 62
	yield (get_tree().create_timer(0.15),"timeout")
	#spawn() #batida 63
	yield (get_tree().create_timer(0.24),"timeout")
	spawn2() #batida 65
	yield (get_tree().create_timer(0.32),"timeout")
	#spawn() #batida 68
	yield (get_tree().create_timer(0.1),"timeout")
	#spawn() #batida 69
	yield (get_tree().create_timer(0.51),"timeout")
	spawn() #batida 72
	yield (get_tree().create_timer(0.27),"timeout")
	#spawn() #batida 74
	yield (get_tree().create_timer(0.65),"timeout")
	#spawn2() #batida 77
	yield (get_tree().create_timer(0.76),"timeout")
	spawn2() #batida 81
	yield (get_tree().create_timer(0.22),"timeout")
	#spawn() #batida 83
	yield (get_tree().create_timer(0.27),"timeout")
	#spawn() #batida 85
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #batida 87
	yield (get_tree().create_timer(0.13),"timeout")
	spawn() #batida 88


func onda4():
	yield (get_tree().create_timer(0.58),"timeout")
	spawn4() #batida 92
	yield (get_tree().create_timer(0.35),"timeout")
	#spawn() #batida 94
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 95
	yield (get_tree().create_timer(0.44),"timeout")
	#spawn() #batida 97
	yield (get_tree().create_timer(0.17),"timeout")
	#spawn3() #batida 99
	yield (get_tree().create_timer(0.49),"timeout")
	#spawn3() #batida 101
	yield (get_tree().create_timer(0.08),"timeout")
	#spawn() #batida 102
	yield (get_tree().create_timer(0.60),"timeout")
	spawn4() #batida 105
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #batida 107
	yield (get_tree().create_timer(0.27),"timeout")
	#spawn() #batida 109
	yield (get_tree().create_timer(0.19),"timeout")
	#spawn() #batida 111
	yield (get_tree().create_timer(0.25),"timeout")
	#spawn3() #batida 113
	yield (get_tree().create_timer(0.24),"timeout")
	#spawn() #batida 115
	yield (get_tree().create_timer(0.23),"timeout")
	spawn4() #batida 116

func onda5():
	yield (get_tree().create_timer(0.23),"timeout")
	#spawn() #batida 118
	yield (get_tree().create_timer(0.48),"timeout")
	spawn() #batida 121 
	yield (get_tree().create_timer(0.23),"timeout")
	#spawn() #batida 122
	yield (get_tree().create_timer(0.22),"timeout")
	spawn() #batida 124
	yield (get_tree().create_timer(0.42),"timeout")
	spawn() #batida 126
	yield (get_tree().create_timer(0.36),"timeout")
	#spawn() #batida 128
	yield (get_tree().create_timer(0.49),"timeout")
	#spawn() #batida 131
	yield (get_tree().create_timer(0.27),"timeout")
	spawn2() #batida 133
	yield (get_tree().create_timer(0.31),"timeout")
	spawn() #batida 135


func _on_Timer_timeout():
	spawn()
