extends Node

const bandido1 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita.tscn") #chute
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita2.tscn") #soco
const seguranca = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita.tscn") #chute
const seguranca2 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita2.tscn") #soco


func _ready():
	yield(get_tree().create_timer(3),"timeout")
	spawn() #batida 1
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #batida 3
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 3
	yield (get_tree().create_timer(1.49),"timeout")
	spawn3() #batida 6
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #batida 8
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #batida 8
	
	
	yield (get_tree().create_timer(0.65),"timeout")
	spawn3() #batida 10
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #batida 13
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #batida 13
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 13
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 14
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #batida 15
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #batida 15
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #batida 15
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 16
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #batida 21
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 21
	yield (get_tree().create_timer(0.11),"timeout")
	#spawn() #batida 22
	onda2()
	yield (get_tree().create_timer(4.12),"timeout")
	onda3()
	yield (get_tree().create_timer(4.13),"timeout")
	onda4()
	yield (get_tree().create_timer(4.62),"timeout")
	onda5()
	

#SOCO=============================================
func spawn():
	var inimigo = magoViado.instance()
	var pos = self.global_position
	inimigo.set_position(pos)
	get_node("container").add_child(inimigo)
	yield( get_tree(), "idle_frame")

func spawn4():
	var seg2 = seguranca2.instance()
	var pos = self.global_position
	seg2.set_position(pos)
	get_node("container").add_child(seg2)
	yield( get_tree(), "idle_frame")

#==================================================

#CHUTE==============================================
func spawn3():
	var inimigo2 = bandido1.instance()
	var pos = self.global_position
	inimigo2.set_position(pos)
	get_node("container").add_child(inimigo2)
	yield( get_tree(), "idle_frame")

func spawn2():
	var seg = seguranca.instance()
	var pos = self.global_position
	seg.set_position(pos)
	get_node("container").add_child(seg)
	yield( get_tree(), "idle_frame")
#===================================================
	
func onda2():
	yield (get_tree().create_timer(0.12),"timeout")
	spawn2() #batida 23
	yield (get_tree().create_timer(0.24),"timeout")
	spawn3() #batida 25
	yield (get_tree().create_timer(0.24),"timeout")
	spawn2() #batida 27
	yield (get_tree().create_timer(0.24),"timeout")
	spawn4() #batida 28
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #batida 31
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 31
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #batida 34
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #batida 34
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #batida 34
	yield (get_tree().create_timer(0.23),"timeout")
	spawn4() #batida 35
	yield (get_tree().create_timer(0.23),"timeout")
	spawn() #batida 36
	yield (get_tree().create_timer(0.31),"timeout")
	spawn2() #batida 40
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #batida 41
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #batida 44
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #batida 44
	yield (get_tree().create_timer(0.23),"timeout")
	#spawn4() #batida 45
	yield (get_tree().create_timer(0.07),"timeout")
	spawn4() #batida 46
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #batida 49

func onda3():
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn4() #batida 50
	yield (get_tree().create_timer(0.16),"timeout")
	spawn2() #batida 51
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #batida 54
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #batida 54
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 55
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #batida 57
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 59
	yield (get_tree().create_timer(0.23),"timeout")
	spawn() #batida 61
	yield (get_tree().create_timer(0.36),"timeout")
	spawn3() #batida 64
	yield (get_tree().create_timer(0.33),"timeout")
	spawn() #batida 66
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 67
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 70
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #batida 70
	yield (get_tree().create_timer(0.04),"timeout")
	#spawn() #batida 71
	yield (get_tree().create_timer(0.35),"timeout")
	spawn3() #batida 73
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #batida 75
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #batida 76
	yield (get_tree().create_timer(0.25),"timeout")
	spawn() #batida 78
	yield (get_tree().create_timer(0.25),"timeout")
	spawn4() #batida 78

func onda4():
	yield (get_tree().create_timer(0.24),"timeout")
	spawn() #batida 80
	yield (get_tree().create_timer(0.25),"timeout")
	spawn() #batida 82
	yield (get_tree().create_timer(0.1),"timeout")
	#spawn3() #batida 84
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #batida 86
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #batida 89
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #batida 90
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #batida 91
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #batida 93
	yield (get_tree().create_timer(0.25),"timeout")
	spawn4() #batida 96
	yield (get_tree().create_timer(0.25),"timeout")
	spawn() #batida 96
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #batida 98
	yield (get_tree().create_timer(0.35),"timeout")
	spawn4() #batida 100
	yield (get_tree().create_timer(0.5),"timeout")
	spawn3() #batida 103
	yield (get_tree().create_timer(0.1),"timeout")
	#spawn() #batida 104
	yield (get_tree().create_timer(0.1),"timeout")
	spawn2() #batida 106
	yield (get_tree().create_timer(0.28),"timeout")
	spawn() #batida 106
	yield (get_tree().create_timer(0.20),"timeout")
	spawn4() #batida 108
	yield (get_tree().create_timer(0.36),"timeout")
	spawn2() #batida 110

func onda5():
	yield (get_tree().create_timer(0.25),"timeout")
	spawn3() #batida 112
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #batida 114
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #batida 117
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 119
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #batida 120
	yield (get_tree().create_timer(0.25),"timeout")
	spawn3() #batida 123
	yield (get_tree().create_timer(0.25),"timeout")
	spawn4() #batida 123
	yield (get_tree().create_timer(0.26),"timeout")
	spawn() #batida 125
	yield (get_tree().create_timer(0.25),"timeout")
	spawn4() #batida 127
	yield (get_tree().create_timer(0.24),"timeout")
	spawn() #batida 127
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 129
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #batida 129
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #batida 130
	yield (get_tree().create_timer(0.31),"timeout")
	spawn3() #batida 132
	yield (get_tree().create_timer(0.29),"timeout")
	spawn() #batida 134


func _on_Timer_timeout():
	spawn()

