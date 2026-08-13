extends CharacterBody2D



@export var player: PackedScene
@export var asteroid: CharacterBody2D
@export var asteroid_scene: PackedScene
@export var pivot: Node2D

const dead = 0
const speed = 300.0
var health: int = 100
var ship: CharacterBody2D
var damage: int = 1


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for node in get_tree().get_nodes_in_group("ship"):
		ship = node
	
		

func take_damage() -> void:
	if health > dead:
		health -= damage
	elif health == 0:
		queue_free()	
	
func _player_dmg(ship: CharacterBody2D) -> void:
	ship.take_damage()
