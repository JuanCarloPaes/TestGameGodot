extends Node

const magoViado = preload ("res://Scenes/Magoviado_Esquerda.tscn")
const segurancaGAY = preload ("res://Scenes/Seguranca_ESQ.tscn")
#var cacete = true
#var monstrose = 4

func _ready():
	yield (get_tree().create_timer(4.9),"timeout")
	spawn() #1
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #3
	yield (get_tree().create_timer(2),"timeout")
	spawn() #6
	yield (get_tree().create_timer(2.3),"timeout")
	spawn() #8
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #10
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #11
	yield (get_tree().create_timer(1.4),"timeout")
	spawn() #13
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #15
	yield (get_tree().create_timer(2),"timeout")
	spawn() #17
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #18
	yield (get_tree().create_timer(1),"timeout")
	spawn() #20
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #23
	
	
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




func onda():
	yield (get_tree().create_timer(1.6),"timeout")
	canspawn2()
	yield (get_tree().create_timer(0.5),"timeout")
	canspawn() 
	yield (get_tree().create_timer(0.3),"timeout")
	canspawn2() 
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() 
	yield (get_tree().create_timer(0.6),"timeout")
	canspawn() 
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn2() 
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn2() 
	yield (get_tree().create_timer(0.7),"timeout")
	canspawn() 
	
	
	

func _on_Timer_timeout():
	spawn()
