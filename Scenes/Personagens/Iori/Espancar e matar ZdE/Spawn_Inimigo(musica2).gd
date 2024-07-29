extends Node

const magoViado = preload ("res://Scenes/Magoviado.tscn")
const seguranca = preload ("res://Scenes/Seguranca_DIR.tscn")

func _ready():
	yield (get_tree().create_timer(1.1),"timeout")
	spawn2() #2
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #4
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2() #6
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #8
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #9
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #11
	yield (get_tree().create_timer(1.5),"timeout")
	spawn2() #14
	yield (get_tree().create_timer(0.7),"timeout")
	spawn2() #15
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #17
	yield (get_tree().create_timer(1),"timeout")
	spawn() #19
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #20
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #22
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #24
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #25
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #26
	yield (get_tree().create_timer(1.1),"timeout")
	spawn() #28
	
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
	yield (get_tree().create_timer(1.7),"timeout")
	spawn2() #32
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #34
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #35
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #37
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #40
	yield (get_tree().create_timer(1),"timeout")
	spawn() #42
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #43
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #45
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #46
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #47
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #49
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #51
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #52
	yield (get_tree().create_timer(1.4),"timeout")
	spawn() #55
	

func onda3():
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #57
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #58
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #60
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #62
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #63
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #65
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #67
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #69
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #70
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #72
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #74
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #76
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #79
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #81
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #82
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #84
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #86
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #88
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #90
	

func onda4():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #91
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #94
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #96
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #98
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #99
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #101
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #102
	yield (get_tree().create_timer(1.2),"timeout")
	spawn2() #105
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #108
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #110
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #112
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #114
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #115
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #117
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #119
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #120
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #122
	yield (get_tree().create_timer(1.6),"timeout")
	spawn() #126
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #127
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #129
	

func onda5():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #130
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #131
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #133
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #135
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #137
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #139
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #141
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #143
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #145
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #147
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #149
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #150
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #152
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #155
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #157
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #159
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #160
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #162
	
func onda6():
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #165
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #167
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #170
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #171
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #173
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #174
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #175
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #176
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #178
	yield (get_tree().create_timer(1.3),"timeout")
	spawn() #180
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #181
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #183
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #186
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #187
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #188
	
func onda7():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #190
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #192
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #193
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #195
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #197
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #198
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #200
	yield (get_tree().create_timer(1.5),"timeout")
	spawn() #205
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #207
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #210
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #211
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #213
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #215
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #217
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #220
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #221
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #222
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #224

func onda8():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #226
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #227
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #230
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #231
	yield (get_tree().create_timer(1.2),"timeout")
	spawn() #234
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #236
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #238
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #240
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #242
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #243
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #245
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #246
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #248
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
	spawn() #259
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #260
	

func _on_Timer_timeout():
	spawn()

