extends Control

func _ready():
	$TotalShots/ShotsDP.text = str(Global.total_shots)

func _on_menu_button_pressed():
	# Volver al menu
	get_tree().change_scene_to_file("res://Scenes/Menu.tscn")
	Global.total_shots = 0
