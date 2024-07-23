extends CanvasLayer

@onready var play_button: Button = %PlayButton
@onready var quit_button: Button = %QuitButton

@export var game_scene: PackedScene

func quit_game():
	get_tree().quit()

func start_game():
	GameManager.reset()
	get_tree().change_scene_to_packed(game_scene)


func _on_play_button_pressed():
	start_game()


func _on_quit_button_pressed():
	quit_game()
