extends Node

func _process(_delta):
	$HUD/BulletsDP.text = str(Global.bullets)
	$HUD/BouncesDP.text = str(Global.bounces) + " / " + str(Global.static_bounces)
	$HUD/SHOTS/ShotsDP.text = str(Global.total_shoots)
	
	# Si el jugador se queda sin balas y sin rebotes, pasa a la escena de derrota
	if Global.bullets == 0 and Global.bounces == 0:
		change_scene()

func change_scene():
	get_tree().change_scene_to_file("res://Scenes/L3Defeat.tscn")
