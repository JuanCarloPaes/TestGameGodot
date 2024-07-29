extends Node

const magoViado = preload ("res://Scenes/Magoviado_Esquerda.tscn")
const segurancaGAY = preload ("res://Scenes/Seguranca_ESQ.tscn")
#var cacete = true
#var monstrose = 4

func _ready():
	yield (get_tree().create_timer(8.1),"timeout")
	spawn() #1
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #3
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #4
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #6
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #9
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #11
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #13
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #16
	yield (get_tree().create_timer(0.6),"timeout")
	#spawn() #18
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #19
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #21
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #23
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #25
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #28
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #30
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #31
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn2() #32
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #35
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #38
	
	onda2()
	yield (get_tree().create_timer(8.5),"timeout")
	onda3()
	yield (get_tree().create_timer(7.7),"timeout")
	onda4()
	yield (get_tree().create_timer(9.8),"timeout")
	onda5()
	yield (get_tree().create_timer(12.1),"timeout")
	onda6()
	yield (get_tree().create_timer(9.1),"timeout")
	onda7()
	yield (get_tree().create_timer(7.0),"timeout")
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
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #41
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #43
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #46
	yield (get_tree().create_timer(0.6),"timeout")
	#spawn() #49
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #51
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn() #54
	yield (get_tree().create_timer(0.1),"timeout")
	spawn() #55
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #57
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #60
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #62
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #63
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn() #65
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #67
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #69
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #72
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #73
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #75
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #78
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #80
	
	
	
	
func onda3():
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #82
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #84
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #86
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #89
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #91
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #92
	yield (get_tree().create_timer(0.9),"timeout")
	spawn2() #95
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #98
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #100
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #101
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #103
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #105
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #107
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #110
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #112
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #114
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #115
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #117
	
	


func onda4():
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #120
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #122
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn() #123
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #125
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #127
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #130
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #132
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #135
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn() #137
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #139
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #142
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #144
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #146
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #148
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #152
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn() #154
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #156
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #157
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #158
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #160
	

func onda5():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #162
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #164
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #166
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #168
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #170
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #172
	yield (get_tree().create_timer(0.6),"timeout")
	#spawn() #174
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #175
	yield (get_tree().create_timer(0.8),"timeout")
	spawn2() #178
	yield (get_tree().create_timer(1.4),"timeout")
	spawn() #182
	yield (get_tree().create_timer(0.6),"timeout")
	#spawn() #184
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #185
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #187
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #188
	yield (get_tree().create_timer(0.6),"timeout")
	spawn2() #190
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #193
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #194
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #196
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #198
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #199
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #202
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #204
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #207
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #209
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #210
	

func onda6():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #212
	yield (get_tree().create_timer(0.5),"timeout")
	spawn() #214
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #215
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn() #217
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #219
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #221
	yield (get_tree().create_timer(1),"timeout")
	spawn2() #224
	yield (get_tree().create_timer(1),"timeout")
	spawn() #228
	yield (get_tree().create_timer(0.4),"timeout")
	#spawn() #230
	yield (get_tree().create_timer(0.1),"timeout")
	spawn() #231
	yield (get_tree().create_timer(0.5),"timeout")
	#spawn() #233
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #236
	yield (get_tree().create_timer(0.4),"timeout")
	spawn2() #238
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #240
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #241
	yield (get_tree().create_timer(0.2),"timeout")
	spawn2() #242
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #245
	

func onda7():
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #247
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #251
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #253
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #255
	yield (get_tree().create_timer(0.2),"timeout")
	#spawn() #257
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #259
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #262
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #263
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #265
	yield (get_tree().create_timer(0.4),"timeout")
	spawn() #267
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #270
	yield (get_tree().create_timer(0.5),"timeout")
	spawn2() #272
	yield (get_tree().create_timer(0.7),"timeout")
	spawn() #275
	yield (get_tree().create_timer(0.3),"timeout")
	#spawn() #276
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #277
	yield (get_tree().create_timer(0.8),"timeout")
	spawn() #280
	

func onda8():
	yield (get_tree().create_timer(0.6),"timeout")
	spawn() #282
	yield (get_tree().create_timer(0.3),"timeout")
	spawn2() #283
	yield (get_tree().create_timer(0.9),"timeout")
	spawn() #286
	yield (get_tree().create_timer(0.2),"timeout")
	spawn() #287
	yield (get_tree().create_timer(0.3),"timeout")
	spawn() #289
	
	

func _on_Timer_timeout():
	spawn()
