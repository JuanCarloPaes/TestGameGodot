extends Node

const magoViado = preload ("res://Scenes/Magoviado_Esquerda.tscn")
const segurancaGAY = preload ("res://Scenes/Seguranca_ESQ.tscn")
#var cacete = true
#var monstrose = 4

func _ready():
	yield (get_tree().create_timer(0.48),"timeout")
	spawn2() #1
	yield (get_tree().create_timer(1.4),"timeout")
	spawn() #3
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2() #5
	yield (get_tree().create_timer(1),"timeout")
	spawn2() #7
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #10
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #12
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #13
	yield (get_tree().create_timer(2.1),"timeout")
	spawn2() #16
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #18
	yield (get_tree().create_timer(1.4),"timeout")
	spawn() #21
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #23
	yield (get_tree().create_timer(1.7),"timeout")
	spawn2() #27
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #29
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #30
	
	onda2()
	yield (get_tree().create_timer(18),"timeout")
	onda3()
	yield (get_tree().create_timer(13.6),"timeout")
	onda4()
	yield (get_tree().create_timer(11.9),"timeout")
	onda5()
	yield (get_tree().create_timer(15.1),"timeout")
	onda6()
	yield (get_tree().create_timer(10.2),"timeout")
	onda7()
	yield (get_tree().create_timer(12.2),"timeout")
	onda8()
	
	
func spawn():
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
	
func onda2():
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #31
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2() #33
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #36
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #38
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #39
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #41
	yield (get_tree().create_timer(1.8),"timeout")
	spawn2() #44
	yield (get_tree().create_timer(1.7),"timeout")
	spawn() #48
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #50
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #53
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #54
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2() #56
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #59
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #61
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #64
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #66
	yield (get_tree().create_timer(0.7),"timeout")
	spawn2() #68
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #71
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #73
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #75
	
	
	
func onda3():
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #77
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #78
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #80
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #83
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #85
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #87
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #89
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #92
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #93
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #95
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #97
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #100
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #103
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #104
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #106
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #107
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #109
	


func onda4():
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #111
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #113
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #116
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #118
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #121
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #123
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #124
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #125
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #128
	yield (get_tree().create_timer(1.6),"timeout")
	spawn() #132
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #134
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #136
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #138
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #140
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #142
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #144
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #146
	

func onda5():
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #148
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #151
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #153
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #154
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #156
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #158
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #161
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #163
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #164
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #166
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #168
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #169
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #172
	yield (get_tree().create_timer(2),"timeout")
	spawn() #177
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #179
	yield (get_tree().create_timer(1.6),"timeout")
	spawn() #182
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #184

func onda6():
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #185
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #189
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #191
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #194
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #196
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #199
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #201
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #202
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #203
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #204
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #206
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #208
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #209
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #212
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #214
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #216
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #218

func onda7():
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #219
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #223
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #225
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #228
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #229
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #232
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #233
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #235
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #237
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #239
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #241
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #244
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #247
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #249
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #251
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #253

func onda8():
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #255
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #256
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #258
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #261
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #262
	

func _on_Timer_timeout():
	spawn()
