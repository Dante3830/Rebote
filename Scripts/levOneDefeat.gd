extends Control

func _on_restart_button_pressed():
	# Reintentar nivel
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
	Global.bullets = 3
	Global.bounces = 3
	Global.static_bounces = 3

func _on_menu_button_pressed():
	# Volver al menu
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
	Global.total_shots = 0
