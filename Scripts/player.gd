extends CharacterBody2D

# Bala
@onready var Bullet = preload("res://Scenes/Bullet.tscn")

# Posicion de spawneo de la bala
@onready var spawnPosition = $SpawnPosition

func _process(_delta):
	# Rotar hacia donde se dirija el cursor
	global_rotation = global_position.direction_to(get_global_mouse_position()).angle() + PI/2.0
	
	# Si se lo permite, el jugador puede disparar una bala
	if Global.can_shoot:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			shoot()

# Disparar la bala
func shoot():
	# Instanciar bala (escena externa)
	var bullet = Bullet.instantiate()
	bullet.position = spawnPosition.global_position
	bullet.rotation = global_position.direction_to(get_global_mouse_position()).angle()
	get_tree().current_scene.add_child(bullet)
	
	# Deshabilitar disparos mientas la bala siga rebotando
	Global.can_shoot = false
	
	# Quitar una bala
	Global.bullets -= 1
	
	# Establecer la cantidad de rebotes
	Global.bounces = Global.static_bounces
	
	# Esto es para que no cuente las colisiones con el jugador
	Global.bounces += 2
	
	# Suma uno a los disparos totales del juego
	Global.total_shoots += 1
