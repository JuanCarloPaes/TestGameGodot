extends Node

const magoViado = preload ("res://Scenes/Magoviado.tscn")
const seguranca = preload ("res://Scenes/Seguranca_DIR.tscn")



func _ready():
	spawn() #batida 1
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #batida 3
	yield (get_tree().create_timer(1.49),"timeout")
	spawn() #batida 6
	yield (get_tree().create_timer(0.49),"timeout")
	spawn() #batida 8
	yield (get_tree().create_timer(0.65),"timeout")
	spawn2() #batida 10
	yield (get_tree().create_timer(0.68),"timeout")
	spawn2() #batida 13
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 14
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #batida 15
	yield (get_tree().create_timer(0.12),"timeout")
	#spawn() #batida 16
	yield (get_tree().create_timer(0.08),"timeout")
	#spawn() #batida 17
	yield (get_tree().create_timer(0.41),"timeout")
	spawn2() #batida 21
	yield (get_tree().create_timer(0.11),"timeout")
	#spawn() #batida 22
	onda2()
	yield (get_tree().create_timer(4.12),"timeout")
	onda3()
	yield (get_tree().create_timer(4.13),"timeout")
	onda4()
	yield (get_tree().create_timer(4.62),"timeout")
	onda5()
	

func spawn():
	var inimigo = magoViado.instance()
	var pos = self.global_position
	inimigo.set_position(pos)
	get_node("container").add_child(inimigo)
	yield( get_tree(), "idle_frame")

func spawn2():
	var seg = seguranca.instance()
	var pos = self.global_position
	seg.set_position(pos)
	get_node("container").add_child(seg)
	yield( get_tree(), "idle_frame")
	
func onda2():
	yield (get_tree().create_timer(0.12),"timeout")
	#spawn() #batida 23
	yield (get_tree().create_timer(0.24),"timeout")
	spawn() #batida 25
	yield (get_tree().create_timer(0.24),"timeout")
	#spawn() #batida 27
	yield (get_tree().create_timer(0.24),"timeout")
	spawn() #batida 28
	yield (get_tree().create_timer(0.47),"timeout")
	spawn2() #batida 31
	yield (get_tree().create_timer(0.72),"timeout")
	spawn() #batida 34
	yield (get_tree().create_timer(0.23),"timeout")
	spawn() #batida 35
	yield (get_tree().create_timer(0.23),"timeout")
	#spawn() #batida 36
	yield (get_tree().create_timer(0.31),"timeout")
	spawn() #batida 40
	yield (get_tree().create_timer(0.16),"timeout")
	#spawn() #batida 41
	yield (get_tree().create_timer(0.46),"timeout")
	spawn2() #batida 44
	yield (get_tree().create_timer(0.23),"timeout")
	#spawn() #batida 45
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 46
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #batida 49

func onda3():
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 50
	yield (get_tree().create_timer(0.16),"timeout")
	#spawn() #batida 51
	yield (get_tree().create_timer(0.44),"timeout")
	spawn() #batida 54
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 55
	yield (get_tree().create_timer(0.23),"timeout")
	spawn() #batida 57
	yield (get_tree().create_timer(0.17),"timeout")
	#spawn() #batida 59
	yield (get_tree().create_timer(0.23),"timeout")
	spawn2() #batida 61
	yield (get_tree().create_timer(0.36),"timeout")
	#spawn() #batida 64
	yield (get_tree().create_timer(0.33),"timeout")
	#spawn() #batida 66
	yield (get_tree().create_timer(0.07),"timeout")
	#spawn() #batida 67
	yield (get_tree().create_timer(0.41),"timeout")
	spawn() #batida 70
	yield (get_tree().create_timer(0.04),"timeout")
	#spawn() #batida 71
	yield (get_tree().create_timer(0.35),"timeout")
	spawn() #batida 73
	yield (get_tree().create_timer(0.22),"timeout")
	spawn() #batida 75
	yield (get_tree().create_timer(0.33),"timeout")
	#spawn() #batida 76
	yield (get_tree().create_timer(0.51),"timeout")
	spawn2() #batida 78
	yield (get_tree().create_timer(0.14),"timeout")
	#spawn() #batida 79

func onda4():
	yield (get_tree().create_timer(0.24),"timeout")
	spawn2() #batida 80
	yield (get_tree().create_timer(0.22),"timeout")
	#spawn() #batida 82
	yield (get_tree().create_timer(0.27),"timeout")
	#spawn() #batida 84
	yield (get_tree().create_timer(0.21),"timeout")
	#spawn() #batida 86
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #batida 89
	yield (get_tree().create_timer(0.18),"timeout")
	#spawn() #batida 90
	yield (get_tree().create_timer(0.26),"timeout")
	spawn2() #batida 91
	yield (get_tree().create_timer(0.16),"timeout")
	#spawn() #batida 93
	yield (get_tree().create_timer(0.50),"timeout")
	spawn() #batida 96
	yield (get_tree().create_timer(0.34),"timeout")
	spawn() #batida 98
	yield (get_tree().create_timer(0.36),"timeout")
	#spawn() #batida 100
	yield (get_tree().create_timer(0.54),"timeout")
	spawn2() #batida 103
	yield (get_tree().create_timer(0.1),"timeout")
	#spawn() #batida 104
	yield (get_tree().create_timer(0.38),"timeout")
	spawn() #batida 106
	yield (get_tree().create_timer(0.20),"timeout")
	#spawn() #batida 108
	yield (get_tree().create_timer(0.36),"timeout")
	spawn() #batida 110

func onda5():
	yield (get_tree().create_timer(0.25),"timeout")
	#spawn() #batida 112
	yield (get_tree().create_timer(0.18),"timeout")
	#spawn() #batida 114
	yield (get_tree().create_timer(0.46),"timeout")
	spawn2() #batida 117
	yield (get_tree().create_timer(0.22),"timeout")
	#spawn() #batida 119
	yield (get_tree().create_timer(0.18),"timeout")
	#spawn() #batida 120
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn() #batida 123
	yield (get_tree().create_timer(0.26),"timeout")
	spawn() #batida 125
	yield (get_tree().create_timer(0.49),"timeout")
	#spawn() #batida 127
	yield (get_tree().create_timer(0.39),"timeout")
	spawn2() #batida 129
	yield (get_tree().create_timer(0.17),"timeout")
	#spawn() #batida 130
	yield (get_tree().create_timer(0.31),"timeout")
	#spawn() #batida 132
	yield (get_tree().create_timer(0.29),"timeout")
	spawn() #batida 134


func _on_Timer_timeout():
	spawn()

