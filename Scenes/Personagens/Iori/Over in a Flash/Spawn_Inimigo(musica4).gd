extends Node

const magoViado = preload ("res://Scenes/Magoviado.tscn")
const seguranca = preload ("res://Scenes/Seguranca_DIR.tscn")

func _ready():
	yield (get_tree().create_timer(5.2),"timeout")
	spawn() #2
	yield (get_tree().create_timer(1),"timeout")
	spawn() #4
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #5
	yield (get_tree().create_timer(1.4),"timeout")
	spawn() #7
	yield (get_tree().create_timer(2),"timeout")
	spawn() #9
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #12
	yield (get_tree().create_timer(1.4),"timeout")
	spawn() #14
	yield (get_tree().create_timer(2.1),"timeout")
	spawn() #16
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #19
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #21
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #22
	
	
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	yield (get_tree().create_timer(5.7),"timeout")
	onda()
	
	
	
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

	
func onda():
	yield (get_tree().create_timer(1.6),"timeout")
	canspawn()
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() 
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() 
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn2() 
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() 
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn2() 
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn() 
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn2() 
	

func _on_Timer_timeout():
	spawn()

