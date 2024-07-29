extends Node2D

var iori = preload ("res://Scenes/Personagens/Iori/Espancar e matar ZdE/IoriEspancarematar.tscn")



# Called when the node enters the scene tree for the first time.
func _ready():
	if $"/root/MenuPrincipal".ioriSelect == true:
		var segur = iori.instance()
		var pos = self.global_position
		segur.set_position(pos)
		get_node("personagem selecionado").add_child(segur)
		yield(get_tree(),"idle_frame")
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



