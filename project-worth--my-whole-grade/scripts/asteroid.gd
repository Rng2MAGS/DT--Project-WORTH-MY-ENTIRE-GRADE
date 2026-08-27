extends CharacterBody2D


@export var asteroid: CharacterBody2D
@export var asteroid_scene: PackedScene
@export var pivot: Node2D
@export var score: int = 0

signal integer_changed(new_value: int)
const dead = 0
const speed = 300.0
var kill_value: int = 10
var health: int = 2
var ship: CharacterBody2D
var damage: int = 1

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
		died()
		queue_free()	
		
func died() -> void:
	score += kill_value
	
func _player_dmg(ship: CharacterBody2D) -> void:
	ship.take_damage()
