extends Camera2D

# Verifica si debe empezar la sacudida
var start_shake = false

# Intensidad de la sacudida
var shake_instensity : float = 0.0

# Amortiguacion de la sacudida
var shake_dampening = 0

# Referencia al nodo "ShakeTime" de la camara
@onready var shake_time = $ShakeTime

func _ready():
	Global.camera = self

func _process(_delta):
	if start_shake == true:
		offset.x = randi_range(-1, 1) * shake_instensity
		offset.y = randi_range(-1, 1) * shake_instensity
		shake_instensity = lerp(shake_instensity, 0.0, shake_dampening)
	else:
		offset = Vector2(0, 0)

func screen_shake(intensity, duration, dampening):
	shake_instensity = intensity
	shake_dampening = dampening
	shake_time.start(duration)
	start_shake = true

func _on_shake_time_timeout():
	start_shake = false
