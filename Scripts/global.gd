extends Node

# Nivel del juego
var level = 0

# Cantidad de balas
var bullets = 5

# Cantidad de veces que puede rebotar la bala
var bounces = 5

# Lo mismo que "bounces" pero para la HUD
var static_bounces = 5

# Verifica si el jugador puede disparar
var can_shoot = true

# Disparos totales durante todo el juego
var total_shots = 0

# Referencia a la camara
var camera = null
