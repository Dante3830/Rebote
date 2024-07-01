extends Control

func _on_restart_button_pressed():
	# Reintentar nivel
	get_tree().change_scene_to_file("res://Scenes/Level2.tscn")
	Global.bullets = 4
	Global.bounces = 5
	Global.static_bounces = 5

func _on_quit_button_pressed():
	# Salir de la aplicacion
	get_tree().quit()
