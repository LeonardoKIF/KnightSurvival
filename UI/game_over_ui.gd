class_name GameOverUI
extends CanvasLayer

@onready var time_label: Label = %timeLabel
@onready var monster_label: Label = %monsterLabel
@onready var animation_player: AnimationPlayer = %AnimationPlayer


#@export var restart_delay: float = 5.0
#var restart_cooldown: float

func _ready():
	time_label.text = GameManager.time_elepsed_string
	monster_label.text = str(GameManager.monster_defeated_counter)
	#restart_cooldown = restart_delay

func _process(delta):
	
	if Input.is_action_just_pressed("attack"):
		if animation_player.current_animation_position >= animation_player.current_animation_length:
			restart_game()
		animation_player.advance(animation_player.current_animation_length - animation_player.current_animation_position)
		
	
	#restart_cooldown -= delta
	#if restart_cooldown <= 0.0:
	#	restart_game()

func restart_game():
	#GameManager.reset()
	get_tree().change_scene_to_file("res://menu.tscn")
