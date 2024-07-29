extends Node

const bandido1 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita.tscn") #chute
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita2.tscn") #soco
const seguranca = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita.tscn") #chute
const seguranca2 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita2.tscn") #soco

func _ready():
	yield (get_tree().create_timer(3.3),"timeout")
	spawn()#4,7
	
	
	onda1()
	yield (get_tree().create_timer(3.3),"timeout")
	#8
	onda2()
	yield (get_tree().create_timer(1.2),"timeout")
	#9,2
	onda3()
	yield (get_tree().create_timer(7.4),"timeout")
	#16,6
	onda4()
	yield (get_tree().create_timer(3.4),"timeout")
	#20
	onda5()
	yield (get_tree().create_timer(2),"timeout")
	#22
	onda6()
	yield (get_tree().create_timer(8.2),"timeout")
	#30.2
	onda7()
	yield (get_tree().create_timer(2.7),"timeout")
	#32,9
	onda8()
	yield (get_tree().create_timer(2.5),"timeout")
	#35,4
	
	yield (get_tree().create_timer(0.3),"timeout") #so pra dar os 0.6 de aguardo no proxima batida
	#36
	onda9()
	yield (get_tree().create_timer(6),"timeout")
	#42
	onda9()
	yield (get_tree().create_timer(6),"timeout")
	#48
	onda9()
	yield (get_tree().create_timer(6),"timeout")
	#54
	onda10()

	
#SOCO=============================================
func spawn():
	var inimigo = magoViado.instance()
	var pos = self.global_position
	inimigo.set_position(pos)
	get_node("container").add_child(inimigo)
	yield( get_tree(), "idle_frame")
func canspawn():
	var randomo = randi()%4+1
	if randomo > 2:
		spawn()
	else:
		spawn3()
func spawn4():
	var seg2 = seguranca2.instance()
	var pos = self.global_position
	seg2.set_position(pos)
	get_node("container").add_child(seg2)
	yield( get_tree(), "idle_frame")
func canspawn4():
	var randomo = randi()%4+1
	if randomo > 2:
		spawn4()
	else:
		spawn2()
#==================================================
#CHUTE==============================================
func spawn3():
	var inimigo2 = bandido1.instance()
	var pos = self.global_position
	inimigo2.set_position(pos)
	get_node("container").add_child(inimigo2)
	yield( get_tree(), "idle_frame")
func canspawn3():
	var randomo = randi()%4+1
	if randomo > 2:
		spawn3()
	else:
		spawn()
func spawn2():
	var seg = seguranca.instance()
	var pos = self.global_position
	seg.set_position(pos)
	get_node("container").add_child(seg)
	yield( get_tree(), "idle_frame")
func canspawn2():
	var randomo = randi()%4+1
	if randomo > 2:
		spawn2()
	else:
		spawn4()
#=====================================================

	
func onda1():
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()
	
func onda2():
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	
func onda3():
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	
func onda4():
	yield (get_tree().create_timer(1.4),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	
func onda5():
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	
	
func onda6():
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	
	
func onda7():
	yield (get_tree().create_timer(1.1),"timeout")
	#spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	
	
func onda8():
	yield (get_tree().create_timer(0.6),"timeout")
	#spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.3),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	
	
	
func onda9():
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn()
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #20 porrinhas
	
	
func onda10():
	yield (get_tree().create_timer(1.4),"timeout")
	#spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	




func _on_Timer_timeout():
	spawn()
