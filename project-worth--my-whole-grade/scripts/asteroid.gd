extends CharacterBody2D



@export var player: CharacterBody2D
@export var asteroid: CharacterBody2D

const speed = 300.0
var health: int = 100
var damage: int = 20
var asteroid_scene: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var asteroid = asteroid_scene.instantiate()

func take_damage() -> void:
	if health > 0:
		health -= damage
	elif health == 0:
		queue_free()	
	
func _player_dmg(body: Node2D) -> void:
	if body == player:
		player.take_damage()
