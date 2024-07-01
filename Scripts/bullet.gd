extends CharacterBody2D

# Velocidad de la bala
@export var speed = 100

# Direccion de la bala
var direction = Vector2.ZERO

func _ready():
	direction = Vector2(cos(rotation), sin(rotation)).normalized()

func _physics_process(delta):
	position += direction * speed * delta
	var collision = move_and_collide(direction * speed * delta)
	if collision:
		direction = direction.bounce(collision.get_normal())
		Global.bounces -= 1
		Global.camera.screen_shake(5, 5, 0.05)
		if Global.bounces == 0:
			queue_free()
			Global.can_shoot = true
