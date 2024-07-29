extends Node

const bandido1 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita.tscn") #chute
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita2.tscn") #soco
const seguranca = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita.tscn") #chute
const seguranca2 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita2.tscn") #soco

func _ready():
	yield (get_tree().create_timer(4),"timeout")
	spawn2() #1
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #3
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #3,0
	
	
	onda1()
	yield (get_tree().create_timer(3.2),"timeout")
	#4.7
	onda2()
	yield (get_tree().create_timer(6),"timeout")
	#12,2
	onda3()
	yield (get_tree().create_timer(4.2),"timeout")
	#16,4
	onda4()
	yield (get_tree().create_timer(5),"timeout")
	#21,4
	onda5()
	yield (get_tree().create_timer(5.4),"timeout")
	#26,8
	onda6()
	yield (get_tree().create_timer(9.4),"timeout")
	#36,2
	onda7()
	yield (get_tree().create_timer(6.3),"timeout")
	#42,5
	onda8()
	yield (get_tree().create_timer(7.5),"timeout")
	#50
	onda8()
	yield (get_tree().create_timer(7.5),"timeout")
	#57,5
	onda8()
	yield (get_tree().create_timer(7.5),"timeout")
	#65
	onda8()
	yield (get_tree().create_timer(7.5),"timeout")
	#72,5
	onda9()
	yield (get_tree().create_timer(6.2),"timeout")
	#78,7
	onda10()
	yield (get_tree().create_timer(6),"timeout")
	onda10()
	yield (get_tree().create_timer(6),"timeout")
	onda10()
	yield (get_tree().create_timer(6),"timeout")
	#96.7
	
	
	

	
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
	#spawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()#4.7
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()#6,2
	
	
func onda2():
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	#canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()#9,2
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
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()#12,2 e 20 porrinhas
	
	
func onda3():
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	#canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()#16,4
	
	
func onda4():
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn2()# 16.8
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()#17,2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()#
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()#18
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()#18,3
	
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
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
	canspawn2()# 10 porrinhas 21.4 (faltam 18 porrinhas)
	
	
func onda5():
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	#canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
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
	canspawn() #5,4
	

func onda6():
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn2()#27,2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()#29,6
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()# 6 porrinhas, faltam 10 
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()# 36,2
	

func onda7():
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn2()#36,5
	
	yield (get_tree().create_timer(0.3),"timeout")
	#canspawn()
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
	canspawn() #20 porrinhas
	

func onda8():
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	#canspawn()
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
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()# 25 porrinhas
	

func onda9():
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	#canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()# 73.5
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#73,8
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#74,4
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()#74,7
	
	
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
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #4 porrinhas, faltam 18
	

func onda10():
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	#canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
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
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() # 6 porrinhas, faltam 12
	





func _on_Timer_timeout():
	spawn()
