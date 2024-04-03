extends Node2D

var barrel = preload("res://Scene/barrel.tscn")
@onready var spawn_timer = $SpawnTimer

func _ready():
	spawn_timer.timeout.connect(on_spawn_timer_timeout)

func on_spawn_timer_timeout():
	spawn_timer.setup()
	spawn_barrel()

func spawn_barrel():
	var barrel = barrel.instantiate()
	add_child(barrel)
