extends Control

func _on_next_level_button_pressed():
	# Pasar al siguiente nivel
	get_tree().change_scene_to_file("res://Scenes/Level2.tscn")
	Global.level = 2
	Global.bullets = 5
	Global.bounces = 5
	Global.static_bounces = 5
