extends Node

const magoViado = preload ("res://Scenes/Magoviado.tscn")
const seguranca = preload ("res://Scenes/Seguranca_DIR.tscn")

func _ready():
	yield (get_tree().create_timer(8.4),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2() #5
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #7
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #8
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #10
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #12
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #14
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #15
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #17
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #20
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #22
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #24
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #26
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #27
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #29
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #33
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #34
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #37
	
	onda2()
	yield (get_tree().create_timer(8.4),"timeout")
	onda3()
	yield (get_tree().create_timer(8.7),"timeout")
	onda4()
	yield (get_tree().create_timer(7.6),"timeout")
	onda5()
	yield (get_tree().create_timer(10.4),"timeout")
	onda6()
	yield (get_tree().create_timer(9.3),"timeout")
	onda7()
	yield (get_tree().create_timer(9.3),"timeout")
	onda8()
	
func spawn():
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
	
func onda2():
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #39
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #40
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #42
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #44
	yield (get_tree().create_timer(0.1),"timeout")
	#spawn() #45
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #47
	yield (get_tree().create_timer(0.1),"timeout")
	spawn() #48
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #50
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #52
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #53
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #56
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #58
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #59
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #61
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #64
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #66
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #68
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #70
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #71
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #74
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn() #76
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #77
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #79
	
	

func onda3():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #81
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #83
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #85
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #87
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #88
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #90
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #93
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #94
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn() #96
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #97
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #99
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #102
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #104
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #106
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn() #108
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #109
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #111
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #113
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #116
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #118
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #119
	
	

func onda4():
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #121
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #124
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #126
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #128
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #129
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #131
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn() #133
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #134
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #136
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #138
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #140
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #141
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #143
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #145
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn() #147
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #149
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #150
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #151
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #153
	
	

func onda5():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #155
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #159
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #161
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #163
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #165
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #167
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn() #169
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #171
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #173
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #176
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #177
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #179
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #180
	yield (get_tree().create_timer(1),"timeout")
	spawn() #181
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #183
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #186
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #189
	yield (get_tree().create_timer(0.7),"timeout")
	#spawn() #191
	yield (get_tree().create_timer(0.1),"timeout")
	spawn2() #192
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #195
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #197
	
	
func onda6():
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #200
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #201
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #203
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #205
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #206
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #208
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #211
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #213
	yield (get_tree().create_timer(1),"timeout")
	spawn() #216
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #218
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #220
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #222
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #223
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn() #225
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #226
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #227
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #229
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #232
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #234
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #235
	
	
func onda7():
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #237
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #239
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #243
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #244
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #246
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #250
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #252
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #254
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #256
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #258
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #260
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #261
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #264
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #266
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #268
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #269
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #271
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn() #273
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #274
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #278
	

func onda8():
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #279
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #281
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #284
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #285
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #288
	

func _on_Timer_timeout():
	spawn()

