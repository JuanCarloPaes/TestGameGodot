extends Node

const magoViado = preload ("res://Scenes/Magoviado.tscn")
const seguranca = preload ("res://Scenes/Seguranca_DIR.tscn")

func _ready():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #5
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #7
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #11
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #12
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #13
	yield (get_tree().create_timer(1.5),"timeout")
	spawn() #16
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
	
	
func spawn():
	var inimigo = magoViado.instance()
	var pos = self.global_position
	inimigo.set_position(pos)
	get_node("container").add_child(inimigo)
	yield( get_tree(), "idle_frame")

func canspawn():
	var randomo = randi()%2+1
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
	var randomo = randi()%2+1
	if randomo > 1:
		var seg = seguranca.instance()
		var pos = self.global_position
		seg.set_position(pos)
		get_node("container").add_child(seg)
		yield( get_tree(), "idle_frame")

	
func onda():
	yield (get_tree().create_timer(0.9),"timeout")
	canspawn() #20
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #21
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #22
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #23
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #24
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() #25
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #26
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #27
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #28
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #29
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() #30
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #31
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn() #32
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #33
	yield (get_tree().create_timer(0.4),"timeout")
	canspawn2() #34
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() #35
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn() #36
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn2() #37
	
	

func _on_Timer_timeout():
	spawn()

