extends Node

const magoViado = preload ("res://Scenes/Magoviado.tscn")
const seguranca = preload ("res://Scenes/Seguranca_DIR.tscn")

func _ready():
	yield (get_tree().create_timer(3.8),"timeout")
	spawn2() #1
	yield (get_tree().create_timer(1),"timeout")
	spawn() #1
	yield (get_tree().create_timer(1.7),"timeout")
	spawn2() #1
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #1
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #1x
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #1
	yield (get_tree().create_timer(1),"timeout")
	spawn() #1x
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2() #1
	yield (get_tree().create_timer(1.8),"timeout")
	spawn2() #1
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #1
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #1
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #1
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #1
	
	
	
	
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
	var seg = seguranca.instance()
	var pos = self.global_position
	seg.set_position(pos)
	get_node("container").add_child(seg)
	yield( get_tree(), "idle_frame")
	
func canspawn2():
	var randomo = randi()%4+1
	if randomo > 1:
		var seg = seguranca.instance()
		var pos = self.global_position
		seg.set_position(pos)
		get_node("container").add_child(seg)
		yield( get_tree(), "idle_frame")

	
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

