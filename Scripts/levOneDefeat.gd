extends Control

func _on_restart_button_pressed():
	# Reintentar nivel
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
	Global.bullets = 3
	Global.bounces = 3
	Global.static_bounces = 3

func _on_quit_button_pressed():
	# Salir de la aplicacion
	get_tree().quit()
