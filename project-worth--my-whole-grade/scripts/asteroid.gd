extends CharacterBody2D


@export var asteroid: CharacterBody2D
@export var asteroid_scene: PackedScene
@export var pivot: Node2D

const dead = 0
const speed = 200.0
var score: int = 0
var health: int = 2
var ship: CharacterBody2D
var damage: int = 1
var rotations = [1, 2, 3, 4, 5, 6, 7, 8, 9, -1, -2, -3, -4, -5, -6, -7, -8, -9]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for node in get_tree().get_nodes_in_group("Ship"):
		ship = node
		
	if not ship == null:
		look_at(ship.global_position)
		
func _process(_delta: float) -> void:
		velocity = Vector2(1, 0).rotated(rotation) * speed
		
		move_and_slide()

func take_damage() -> void:
	if health > dead:
		health -= damage
	elif health <= dead:
		
		queue_free()	
	
func _player_dmg(ship: CharacterBody2D) -> void:
	ship.take_damage()
