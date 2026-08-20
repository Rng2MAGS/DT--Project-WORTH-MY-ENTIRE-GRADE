extends Node2D


@export var pause_menu: Control
@export var spawn_point: PathFollow2D
@export var asteroid_scene: PackedScene


func _spawn_asteroid() -> void:
	spawn_point.progress_ratio = randf_range(0.0, 1.0)
	var asteroid = asteroid_scene.instantiate()
	asteroid.global_position = spawn_point.global_position
	add_child(asteroid)
