extends Control

func _process(delta):
	if Input.is_action_just_pressed("esc"):
		get_tree().change_scene_to_file("res://Scenes/game_root.tscn")

