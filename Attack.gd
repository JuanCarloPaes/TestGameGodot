extends Node2D


onready var player = self.owner
onready var attack2_has_played := false
onready var attack_anim_finished := true
onready var attack_anims := ["A_Attack1", "A_Attack2", "A_Attack3", "A_Air1", "A_Air2", "A_AttackUp", "A_AttackDown_Start","A_AttackDown_End", "A_DashAttack", "Dodge", "B_Attack", "B_Up", "B_Down", "B_Jump"] 
# movement flag for attack anims, edit them in the AnimationPlayer
export var start_attack_movement := false


func _ready():
	set_physics_process(false)

# FIX: magicNrs
func _physics_process(delta):
	match player.anim.current_animation:
		"Dodge":
			set_attack_movement(800,50)
		"A_Attack1":
			set_attack_movement(100,50)
		"A_Attack2":
			set_attack_movement(200,50)
		"A_Attack3":
			set_attack_movement(800,50)
		"A_DashAttack":
			set_attack_movement(1300,10)
		"A_AttackUp":
			set_attack_movement(0,-2500)
		"A_AttackDown_Loop":
			player.apply_gravity(player.gravity*5)
			player.apply_movement()
			if player.is_on_floor():
				player.anim.play("A_AttackDown_End")
	if attack_anim_finished:
		player.get_player_facing_direction() 
		player.flip_anim_to(player.facing_direction)
		enter_attack_anim(player.next_attack_anim)
		player.next_attack_anim = "none"

func enter_attack_anim(animation : String) -> void:
	attack_anim_finished = false
	player.prev_attack_anim = animation
	player.anim.play(animation)
	match animation:
		"A_Attack1":
			player.basic_attack_time_frame.start()
			attack2_has_played = false
		"A_Attack2":
			player.basic_attack_time_frame.start()
			attack2_has_played = true
		"A_Air1":
			player.air_attack_available = false
		"A_AttackUp":
			player.air_attackup_available = false
		"A_DashAttack":
			player.dash_cd.start()
			if !player.is_on_floor():
				player.air_dash_available = false
		"Dodge":
			player.dodge_cd.start()

func _on_AnimationPlayer_animation_finished(anim_name):
	if attack_anims.has(anim_name):
		attack_anim_finished = true
		match anim_name:
			"A_AttackDown_Start":
				player.next_attack_anim = "A_AttackDown_Loop"
			"A_Attack3":
				player.prev_attack_anim = "none"
		if player.next_attack_anim == "none":
			player.switch_to_movement_state()

func set_attack_movement(velocity_x, velocity_y):
	if start_attack_movement:
	    player.velocity.x = velocity_x * player.sprite.scale.x
	    player.velocity.y = velocity_y
	    player.apply_movement()