extends Node

const bandido1 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita.tscn") #chute
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita2.tscn") #soco
const seguranca = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita.tscn") #chute
const seguranca2 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita2.tscn") #soco

func _ready():
	yield (get_tree().create_timer(2.5),"timeout")
	spawn() #1
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #3
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #3
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #3
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #3
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #7
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #7
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #9
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #9
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #10
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #10
	
	
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	yield (get_tree().create_timer(4.1),"timeout")
	onda()
	

	
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
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2()








func _on_Timer_timeout():
	spawn()
