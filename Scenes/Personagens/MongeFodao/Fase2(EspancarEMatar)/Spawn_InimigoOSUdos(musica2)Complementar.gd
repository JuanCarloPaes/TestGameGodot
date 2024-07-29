extends Node

const bandido1 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita.tscn") #chute
const magoViado = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido1/inimigoBandidoDireita2.tscn") #soco
const seguranca = preload ("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita.tscn") #chute
const seguranca2 = preload("res://Scenes/Personagens/MongeFodao/InimigosOSUdos/InimigoBandido2/inimigoBandido2Direita2.tscn") #soco

func _ready():
	yield (get_tree().create_timer(1.9),"timeout")
	yield (get_tree().create_timer(1.4),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(0.7),"timeout")
	spawn3() #4
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #6
	yield (get_tree().create_timer(1.1),"timeout")
	spawn3() #8
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #9
	yield (get_tree().create_timer(0.9),"timeout")
	spawn4() #11
	yield (get_tree().create_timer(1.5),"timeout")
	spawn2() #14
	yield (get_tree().create_timer(0.7),"timeout")
	spawn3() #15
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #17
	yield (get_tree().create_timer(1),"timeout")
	spawn2() #19
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #20
	yield (get_tree().create_timer(0.7),"timeout")
	spawn3() #22
	yield (get_tree().create_timer(0.8),"timeout")
	spawn4() #24
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #25
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4() #26
	yield (get_tree().create_timer(1.1),"timeout")
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
	yield (get_tree().create_timer(10.2),"timeout")
	onda8()
	yield (get_tree().create_timer(10.6),"timeout")
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
	yield (get_tree().create_timer(1.7),"timeout")
	spawn() #32
	yield (get_tree().create_timer(0.9),"timeout")
	spawn4() #34
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #35
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #37
	yield (get_tree().create_timer(1.3),"timeout")
	spawn3() #40
	yield (get_tree().create_timer(1),"timeout")
	spawn2() #42
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #43
	yield (get_tree().create_timer(1.3),"timeout")
	spawn2() #45
	yield (get_tree().create_timer(0.4),"timeout")
	spawn3() #46
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #47
	yield (get_tree().create_timer(0.9),"timeout")
	spawn3() #49
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #51
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #52
	yield (get_tree().create_timer(1.4),"timeout")
	spawn() #55
	

func onda3():
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #57
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #58
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #60
	yield (get_tree().create_timer(0.5),"timeout")
	spawn4() #62
	yield (get_tree().create_timer(0.3),"timeout")
	spawn4() #63
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #65
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #67
	yield (get_tree().create_timer(0.7),"timeout")
	spawn3() #69
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #70
	yield (get_tree().create_timer(0.9),"timeout")
	spawn3() #72
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2() #74
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #76
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #79
	yield (get_tree().create_timer(0.8),"timeout")
	spawn4() #81
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #82
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #84
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #86
	yield (get_tree().create_timer(0.8),"timeout")
	spawn4() #88
	yield (get_tree().create_timer(0.8),"timeout")
	spawn3() #90
	

func onda4():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #91
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #94
	yield (get_tree().create_timer(0.8),"timeout")
	spawn3() #96
	yield (get_tree().create_timer(0.8),"timeout")
	spawn4() #98
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #99
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #101
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #102
	yield (get_tree().create_timer(1.2),"timeout")
	spawn4() #105
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #108
	yield (get_tree().create_timer(0.8),"timeout")
	spawn3() #110
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #112
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #114
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #115
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #117
	yield (get_tree().create_timer(0.8),"timeout")
	spawn4() #119
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #120
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #122
	yield (get_tree().create_timer(1.6),"timeout")
	spawn3() #126
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #127
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #129
	

func onda5():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #130
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #131
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #133
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #135
	yield (get_tree().create_timer(0.6),"timeout")
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
	spawn2() #147
	yield (get_tree().create_timer(0.8),"timeout")
	spawn4() #149
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #150
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #152
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #155
	yield (get_tree().create_timer(0.8),"timeout")
	spawn3() #157
	yield (get_tree().create_timer(0.8),"timeout")
	spawn3() #159
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #160
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #162
	
func onda6():
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #165
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #167
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #170
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #171
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #173
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #174
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #175
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #176
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #178
	yield (get_tree().create_timer(1.3),"timeout")
	spawn3() #180
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #181
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2() #183
	yield (get_tree().create_timer(0.9),"timeout")
	spawn3() #186
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #187
	yield (get_tree().create_timer(0.3),"timeout")
	spawn3() #188
	
func onda7():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #190
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3() #192
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #193
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3() #195
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #197
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #198
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3() #200
	yield (get_tree().create_timer(1.5),"timeout")
	spawn() #205
	yield (get_tree().create_timer(0.6),"timeout")
	spawn4() #207
	yield (get_tree().create_timer(0.9),"timeout")
	spawn3() #210
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #211
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #213
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3() #215
	yield (get_tree().create_timer(0.6),"timeout")
	spawn3() #217
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #220
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #221
	yield (get_tree().create_timer(0.2),"timeout")
	spawn4() #222
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #224

func onda8():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn4() #226
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #227
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #230
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #231
	yield (get_tree().create_timer(1.2),"timeout")
	spawn4() #234
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #236
	yield (get_tree().create_timer(0.8),"timeout")
	spawn4() #238
	yield (get_tree().create_timer(0.8),"timeout")
	spawn3() #240
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #242
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #243
	yield (get_tree().create_timer(0.8),"timeout")
	spawn3() #245
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #246
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #248
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #250
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #252
	
func onda9():
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #254
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #257
	yield (get_tree().create_timer(0.8),"timeout")
	spawn4() #259
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #260


func _on_Timer_timeout():
	pass # Replace with function body.
