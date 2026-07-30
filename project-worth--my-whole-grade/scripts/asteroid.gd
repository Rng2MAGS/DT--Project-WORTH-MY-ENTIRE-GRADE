extends CharacterBody2D



@export var player: PackedScene
@export var asteroid: CharacterBody2D
@export var asteroid_scene: PackedScene

const speed = 300.0
var health: int = 100
var ship: CharacterBody2D
var damage: int = 20


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for node in get_tree().get_nodes_in_group("ship"):
		ship = node

func take_damage() -> void:
	if health > 0:
		health -= damage
	elif health == 0:
		queue_free()	
	
func _player_dmg(body: Node2D) -> void:
	if body == ship:
		ship.take_damage()
