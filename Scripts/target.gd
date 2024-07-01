extends Area2D

func _on_body_entered(body):
	if body.is_in_group("Bullet"):
		call_deferred("change_scene")

func change_scene():
	# Cargar escena de victoria dependiendo del nivel completado
	Global.can_shoot = true
	
	if Global.level == 1:
		get_tree().change_scene_to_file("res://Scenes/L1Victory.tscn")
	elif Global.level == 2:
		get_tree().change_scene_to_file("res://Scenes/L2Victory.tscn")
	elif Global.level == 3:
		get_tree().change_scene_to_file("res://Scenes/L3Victory.tscn")
