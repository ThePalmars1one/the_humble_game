extends CharacterBody3D

var salud = 5
var velMov = 1

var damage = 1
var attackRate = 1
var attackDist = 2

var puntosQueDa = 10

#componentes

@onready var player : Node = get_node("/root/espacio/player")
@onready var timer : Timer = get_node("Timer")

func _ready() -> void:
	timer.set_wait_time(attackRate)
	timer.start()

#Error
func _physics_process(delta: float) -> void:
	var dir = (player.translation - translation).normalized()
	dir.y = 0
	
	move_and_slide()


