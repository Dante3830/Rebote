extends Control

func _on_next_level_button_pressed():
	# Pasar al siguiente nivel
	get_tree().change_scene_to_file("res://Scenes/Level3.tscn")
	Global.level = 3
	Global.bullets = 5
	Global.bounces = 7
	Global.static_bounces = 7

func _on_quit_button_pressed():
	# Salir de la aplicacion
	get_tree().quit()
