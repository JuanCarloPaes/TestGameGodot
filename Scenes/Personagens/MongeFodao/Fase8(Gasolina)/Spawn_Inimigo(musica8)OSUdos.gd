extends Node

const bandido1 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita.tscn") #chute
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita2.tscn") #soco
const seguranca = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita.tscn") #chute
const seguranca2 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita2.tscn") #soco

func _ready():
	yield (get_tree().create_timer(3.6),"timeout")
	spawn2() #1
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #3
	yield (get_tree().create_timer(0.9),"timeout")
	spawn3() #3
	yield (get_tree().create_timer(1),"timeout")
	spawn() #3
	
	
	onda1()
	yield (get_tree().create_timer(3.8),"timeout")
	#8,8
	onda2()
	yield (get_tree().create_timer(8.8),"timeout")
	onda3()#17,6
	yield (get_tree().create_timer(8.8),"timeout")
	onda4()#26,4
	yield (get_tree().create_timer(9.7),"timeout")
	onda5()#36,1
	yield (get_tree().create_timer(9.9),"timeout")
	onda6()#46
	yield (get_tree().create_timer(10.2),"timeout")
	onda7()#
	

	
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
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #7
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #7
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #9
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #9
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #10
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #10
	yield (get_tree().create_timer(0.6),"timeout")
	spawn4() #10
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #10
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #10
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #10
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #10
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn3() #10

func onda2():
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#9
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#9,4
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#9,8
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#10
	
	yield (get_tree().create_timer(0.5),"timeout")
	spawn()
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4()#10,9
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()#11,1
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()#11,5
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#12
	
	yield (get_tree().create_timer(0.3),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()#12,5
	
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#12,8
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()#13,2
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()#13,6
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()#13,8
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn()#14,2
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	spawn()
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3()#16
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3()#16,5
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.3),"timeout")
	spawn()#17,2
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#17,6
	
func onda3():
	yield (get_tree().create_timer(1.6),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.7),"timeout")
	spawn4()#19,9
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()#20,7
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#21,7
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2()#22,1
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	
	yield (get_tree().create_timer(0.3),"timeout")
	spawn()#23,4
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#24,8
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#26,4
	
func onda4():
	yield (get_tree().create_timer(0.8),"timeout")
	spawn()#27,2
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2()#28,1
	yield (get_tree().create_timer(1),"timeout")
	spawn4()#29,1
	yield (get_tree().create_timer(0.9),"timeout")
	spawn3()#30
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()#31
	
	yield (get_tree().create_timer(0.9),"timeout")
	spawn()#31,9
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2()#32,8
	yield (get_tree().create_timer(1),"timeout")
	spawn4()#33,8
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#34,2
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#34,5
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#34,7
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn()#35,1
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2()#35,6
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#35,8
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4()#36,1
	
func onda5():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3()#36,7
	yield (get_tree().create_timer(0.5),"timeout")
	spawn()#37,2
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#37,4
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()#,6
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()#,8
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#,0
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#38,3
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3()#38,7
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()#39
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#,3
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4()#,8
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3()#40,4
	yield (get_tree().create_timer(0.4),"timeout")
	spawn()#4,8
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#41
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()#
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()#
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#,8
	yield (get_tree().create_timer(2),"timeout")
	spawn()#43,8
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2()#45
	yield (get_tree().create_timer(0.7),"timeout")
	spawn()#,7
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()#46

func onda6():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2()#46,6
	yield (get_tree().create_timer(0.5),"timeout")
	spawn()#47,1
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3()#47,5
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4()#48
	yield (get_tree().create_timer(0.5),"timeout")
	spawn3()#,5
	yield (get_tree().create_timer(0.4),"timeout")
	spawn()#,9
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#49,2
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#49,4
	yield (get_tree().create_timer(0.5),"timeout")
	spawn()#49,9
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2()#50,4
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#50,6
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()#,8
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#51
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#,3
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4()#,7
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2()#52,2
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()#,6
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2()#
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#53
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4()#,5
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2()#54
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()#,3
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#,5
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#,7
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()#,9
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#55,1
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4()#55,3
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#,5
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2()#,9
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn()#56,2

func onda7():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2()#56,6
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3()#,8
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()#57,1
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2()#,7
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()#58
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3()#,3
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()#,6
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#,9
	yield (get_tree().create_timer(0.2),"timeout")
	spawn()#59,1
	yield (get_tree().create_timer(0.5),"timeout")
	spawn3()#,6
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()#,9
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2()#60,2
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4()#,5

func _on_Timer_timeout():
	spawn()
