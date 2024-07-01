extends Control

func _on_play_button_pressed():
	# Empezar por el nivel 1
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
	Global.level = 1
	Global.bullets = 3
	Global.bounces = 3
	Global.static_bounces = 3
