extends Control

func _ready():
	$TotalShots/ShotsDP.text = str(Global.total_shoots)

func _on_menu_button_pressed():
	# Volver al menu
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
	Global.total_shoots = 0

func _on_quit_button_pressed():
	# Salir de la aplicacion
	get_tree().quit()
