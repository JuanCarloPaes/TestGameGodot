extends Node

signal experience_gained(growth_data)

#stats
export (int) var max_hp = 12
export (int) var strength = 8
export (int) var magic = 12

#sistema de level
export (int) var level = 1

var experience = 0
var experience_total = 0
var experience_required = get_required_exp(level + 1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# warning-ignore:shadowed_variable
func get_required_exp(level):
	return round(pow(level,1.8) + level*4)

# warning-ignore:unused_argument
func gain_exp(amount):
	experience_total += amount
	experience += amount
	var growth_data = []
	while experience >= experience_required:
		experience -= experience_required
		growth_data.append([experience_required, experience_required])
		level_up()
	growth_data.append([experience_required, experience_required])
	emit_signal("experience_gained", growth_data)

func level_up():
	level += 1
	experience_required = get_required_exp(level + 1)
	
	var stats = ['max_hp', 'strength', 'magic']
	var random_stat = stats[randi() % stats.size()]
	
	set(random_stat, get(random_stat) + randi() % 4 + 2 )
	
	
