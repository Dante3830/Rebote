extends Control

func _on_restart_button_pressed():
	# Reintentar nivel
	get_tree().change_scene_to_file("res://Scenes/Level3.tscn")
	Global.bullets = 5
	Global.bounces = 7
	Global.static_bounces = 7

func _on_quit_button_pressed():
	# Salir de la aplicacion
	get_tree().quit()
