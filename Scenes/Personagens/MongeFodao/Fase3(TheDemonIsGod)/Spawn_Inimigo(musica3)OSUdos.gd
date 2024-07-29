extends Node

const bandido1 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita.tscn") #chute
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita2.tscn") #soco
const seguranca = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita.tscn") #chute
const seguranca2 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita2.tscn") #soco

func _ready():
	yield (get_tree().create_timer(8.1),"timeout")
	spawn() #1
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #5
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #5
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #7
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #7
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #8
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #10
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #12
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #14
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #15
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #15
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #17
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #20
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #20
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #22
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #22
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #24
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #24
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #26
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #27
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #29
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #33
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #33
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #33
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #34
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #37
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #37
	
	onda2()
	yield (get_tree().create_timer(8.4),"timeout")
	onda3()
	yield (get_tree().create_timer(8.7),"timeout")
	onda4()
	yield (get_tree().create_timer(7.8),"timeout")
	onda5()
	yield (get_tree().create_timer(10.5),"timeout")
	onda6()
	yield (get_tree().create_timer(9.4),"timeout")
	onda7()
	yield (get_tree().create_timer(9.4),"timeout")
	onda8()
	
#SOCO=============================================
func spawn():
	var inimigo = magoViado.instance()
	var pos = self.global_position
	inimigo.set_position(pos)
	get_node("container").add_child(inimigo)
	yield( get_tree(), "idle_frame")

func spawn4():
	var seg2 = seguranca2.instance()
	var pos = self.global_position
	seg2.set_position(pos)
	get_node("container").add_child(seg2)
	yield( get_tree(), "idle_frame")

#==================================================

#CHUTE==============================================
func spawn3():
	var inimigo2 = bandido1.instance()
	var pos = self.global_position
	inimigo2.set_position(pos)
	get_node("container").add_child(inimigo2)
	yield( get_tree(), "idle_frame")

func spawn2():
	var seg = seguranca.instance()
	var pos = self.global_position
	seg.set_position(pos)
	get_node("container").add_child(seg)
	yield( get_tree(), "idle_frame")
#=====================================================
	
func onda2():
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #39
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #40
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #42
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #45
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #47
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #50
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #52
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #53
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #56
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #56
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #58
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #58
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #59
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #61
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #64
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #64
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #68
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #70
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #70
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #71
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #74
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #74
	yield (get_tree().create_timer(0.5),"timeout")
	spawn3() #76
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #77
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #79
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #79
	
	

func onda3():
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #81
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #83
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #85
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #87
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #88
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #90
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #90
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #93
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #93
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #94
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #96
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #97
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #99
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #102
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #102
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #104
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #106
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #108
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #109
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #111
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #113
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #116
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #118
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #118
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #119
	
	

func onda4():
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #121
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #124
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #124
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #126
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #128
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #129
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #131
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #133
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #134
	yield (get_tree().create_timer(0.5),"timeout")
	spawn3() #136
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #138
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #140
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #140
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #141
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #143
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #145
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #147
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #149
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #150
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #151
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #153
	
	

func onda5():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #155
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #159
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #159
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #161
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #163
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #165
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #167
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #169
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #171
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #173
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #176
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #176
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #177
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #179
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #180
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #181
	yield (get_tree().create_timer(0.5),"timeout")
	spawn3() #181
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #183
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #186
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #186
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #189
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #191
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #191
	yield (get_tree().create_timer(0.1),"timeout")
	#spawn2() #192
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #195
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #195
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #197
	
	
func onda6():
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #200
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #200
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #201
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #203
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #205
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #206
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #208
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #211
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #211
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #213
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #216
	yield (get_tree().create_timer(0.5),"timeout")
	spawn3() #216
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #218
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #220
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #222
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #222
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #223
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #225
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #226
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #227
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #229
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #232
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #232
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #234
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #235
	
	
func onda7():
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #237
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #239
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #243
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #243
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #243
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #244
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #246
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #250
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #252
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #254
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #256
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #258
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #260
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #261
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #264
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #264
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #266
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #266
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #268
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #269
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #271
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #273
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #274
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #278
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #278
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #278
	

func onda8():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn4() #279
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #281
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #284
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4() #284
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #285
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #288
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #288
	

func _on_Timer_timeout():
	spawn()

