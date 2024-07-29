extends Node

const bandido1 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita.tscn") #chute
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita2.tscn") #soco
const seguranca = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita.tscn") #chute
const seguranca2 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita2.tscn") #soco

func _ready():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #5
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #6
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #7
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #7
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #11
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #11
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #11
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #11
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #12
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #13
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #14
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #15
	yield (get_tree().create_timer(0.75),"timeout")
	spawn() #16
	yield (get_tree().create_timer(0.75),"timeout")
	spawn() #16
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #17
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #18
	
	
	
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	onda()
	yield (get_tree().create_timer(7.6),"timeout")
	ondaFinal()
	
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
	
func onda():
	yield (get_tree().create_timer(0.9),"timeout")
	canspawn() #20
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #21
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn3() #22
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2() #23
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn4() #24
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn3() #25
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #26
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn4() #27
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #28
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #29
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn4() #30
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn3() #31
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #32
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn4() #33
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #34
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() #35
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn4() #36
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn3() #37
	
func ondaFinal():
	yield (get_tree().create_timer(0.9),"timeout")
	canspawn() #20
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #21
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn3() #22
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2() #23
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn4() #24
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn3() #25
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #26
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn4() #27
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #28
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #29
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn4() #30
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn3() #31
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #32
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn4() #33
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #34

func _on_Timer_timeout():
	spawn()
