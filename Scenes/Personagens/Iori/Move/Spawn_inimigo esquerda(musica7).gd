extends Node

const magoViado = preload ("res://Scenes/Magoviado_Esquerda.tscn")
const segurancaGAY = preload ("res://Scenes/Seguranca_ESQ.tscn")
#var cacete = true
#var monstrose = 4

func _ready():
	yield (get_tree().create_timer(4.3),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #2
	yield (get_tree().create_timer(1.5),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(1.1),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(1),"timeout")
	spawn() #2
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #2
	yield (get_tree().create_timer(1.1),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(1.6),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #2
	
	onda()
	yield (get_tree().create_timer(17.4),"timeout")
	onda()
	yield (get_tree().create_timer(17.4),"timeout")
	onda()
	yield (get_tree().create_timer(17.4),"timeout")
	onda()
	yield (get_tree().create_timer(17.4),"timeout")
	onda()
	yield (get_tree().create_timer(17.4),"timeout")
	onda()
	yield (get_tree().create_timer(17.4),"timeout")
	onda()
	yield (get_tree().create_timer(17.4),"timeout")
	onda2()
	
	
	
	
	
	
	
	
	#randi()%10+1 RANDOM INT DE 1 A 10
	
func spawn():
	var inimigo = magoViado.instance()
	var pos = self.global_position
	inimigo.set_position(pos)
	get_node("container").add_child(inimigo)
	yield( get_tree(), "idle_frame")

func canspawn():
	var randomo = randi()%4+1
	if randomo > 1:
		var inimigo = magoViado.instance()
		var pos = self.global_position
		inimigo.set_position(pos)
		get_node("container").add_child(inimigo)
		yield( get_tree(), "idle_frame")




func spawn2():
	var segur = segurancaGAY.instance()
	var pos = self.global_position
	segur.set_position(pos)
	get_node("container").add_child(segur)
	yield(get_tree(),"idle_frame")

func canspawn2():
	var randomo = randi()%4+1
	if randomo > 1:
		var segur = segurancaGAY.instance()
		var pos = self.global_position
		segur.set_position(pos)
		get_node("container").add_child(segur)
		yield(get_tree(),"idle_frame")




func ondaaux():
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.2),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #2
	
func ondaux2():
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #2


func ondaaux3():
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.2),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #2
	
func ondaux4():
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn2() #2
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #2
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #2




func onda():
	ondaaux()
	yield (get_tree().create_timer(8.7),"timeout")
	ondaux2()
	
func onda2():
	ondaaux()
	yield (get_tree().create_timer(8.7),"timeout")
	ondaux2()
	
	

func _on_Timer_timeout():
	spawn()
