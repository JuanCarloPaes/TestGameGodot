extends Node

const bandido1 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita.tscn") #chute
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita2.tscn") #soco
const seguranca = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita.tscn") #chute
const seguranca2 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita2.tscn") #soco

func _ready():
	yield (get_tree().create_timer(1.9),"timeout")
	yield (get_tree().create_timer(1.1),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #4
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #4
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #6
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #6
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #8
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #8
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #9
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #11
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #11
	
	
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #14
	yield (get_tree().create_timer(0.7),"timeout")
	spawn4() #14
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #15
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #15
	yield (get_tree().create_timer(0.6),"timeout")
	spawn4() #17
	
	
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #17
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #19
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #19
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #20
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #22
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #22
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #24
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #24
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #25
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #26
	
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #28
	yield (get_tree().create_timer(0.5),"timeout")
	spawn3() #28
	
	
	onda2()
	yield (get_tree().create_timer(12),"timeout")
	onda3()
	yield (get_tree().create_timer(13.5),"timeout")
	onda4()
	yield (get_tree().create_timer(15.6),"timeout")
	onda5()
	yield (get_tree().create_timer(10),"timeout")
	onda6()
	yield (get_tree().create_timer(10.5),"timeout")
	onda7()
	yield (get_tree().create_timer(10.6),"timeout")
	onda8()
	yield (get_tree().create_timer(9.4),"timeout")
	onda9()
	
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
	
func onda2():
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #32
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #32
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #32
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #32
	yield (get_tree().create_timer(0.45),"timeout")
	spawn4() #34
	yield (get_tree().create_timer(0.45),"timeout")
	spawn2() #34
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #35
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #37
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #37
	yield (get_tree().create_timer(0.7),"timeout")
	spawn3() #40
	yield (get_tree().create_timer(0.6),"timeout")
	spawn4() #40
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #42
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4() #42
	
	
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #43
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #45
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #45
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #45
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #46
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #47
	yield (get_tree().create_timer(0.45),"timeout")
	spawn() #49
	yield (get_tree().create_timer(0.45),"timeout")
	spawn() #49
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #51
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #51
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #52
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #55
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #55
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #55
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #55

func onda3():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #57
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #57
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #58
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #60
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #60
	
	
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4() #62
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #63
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #65
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #65
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #67
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #69
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #69
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #70
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #70
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #72
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #72
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #72
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #74
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4() #74
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #76
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #76
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3() #79
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #79
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #81
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #81
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #82
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #84
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #84
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #86
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #86
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #88
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #88
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #90
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #90

func onda4():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #91
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #94
	
	
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #94
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #96
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #96
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #98
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #98
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #99
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #101
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #101
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #102
	
	
	yield (get_tree().create_timer(0.6),"timeout")
	spawn4() #105
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #105
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #105
	
	
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #108
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #108
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #108
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #110
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #110
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #112
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #112
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #114
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #114
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #115
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #117
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #117
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #119
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #119
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #120
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #122
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #122
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #126
	yield (get_tree().create_timer(0.8),"timeout")
	spawn4() #126
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #126
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #127
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #129
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #129
	

func onda5():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #130
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #131
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #133
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #133
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #135
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #135
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #137
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #137
	
	
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #139
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #141
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #143
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #145
	yield (get_tree().create_timer(0.2),"timeout")
	spawn3() #147
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #149
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #149
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #150
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #152
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #152
	
	
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #155
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #155
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #155
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #157
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #157
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #159
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #159
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #160
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #162
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #162
	
	
func onda6():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #165
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #165
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #167
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #167
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #170
	
	
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #170
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #170
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #171
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #173
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #173
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #174
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #175
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #176
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #178
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #178
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #180
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #180
	
	
	yield (get_tree().create_timer(0.7),"timeout")
	spawn3() #180
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #181
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #183
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #183
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4() #186
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #186
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #187
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #188
	

func onda7():
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #190
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #190
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #192
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #193
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #195
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #195
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #197
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #198
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #200
	yield (get_tree().create_timer(0.5),"timeout")
	spawn3() #205
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #205
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #205
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #207
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #210
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #210
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #211
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #213
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #213
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3() #215
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #217
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #217
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #220
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #220
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #221
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #222
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #224

func onda8():
	yield (get_tree().create_timer(0.4),"timeout") #(na calculadora ta 86.1)
	spawn4() #226
	yield (get_tree().create_timer(0.35),"timeout")
	spawn() #227
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #230
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3() #230
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #231
	yield (get_tree().create_timer(0.6),"timeout")
	spawn4() #234
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #234
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #234
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #236
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #236
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #238
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #238
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #240
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #240
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #242
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #242
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #243
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #245
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #245
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #246
	
	
func onda9():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #248
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #248
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #250
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #250
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #252
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #252
	
	
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #254
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #254
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3() #257
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #257
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #259
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #259
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #260
	

func _on_Timer_timeout():
	spawn()

