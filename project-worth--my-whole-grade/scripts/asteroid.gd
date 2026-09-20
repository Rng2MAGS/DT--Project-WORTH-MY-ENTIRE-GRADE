extends CharacterBody2D


@export var asteroid: CharacterBody2D
@export var asteroid_scene: PackedScene
@export var pivot: Node2D

const dead = 0

var speed = 300.0 * global.difficulty
@warning_ignore("narrowing_conversion")
var kill_value: int = 8 * global.difficulty
@warning_ignore("narrowing_conversion")
var health: int = 4 * global.difficulty
var ship: CharacterBody2D
var damage: float = 1  * global.difficulty

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for node in get_tree().get_nodes_in_group("Ship"):
		ship = node
		
	if not ship == null:
		look_at(ship.global_position)
		
func _process(_delta: float) -> void:
		velocity = Vector2(1, 0).rotated(rotation) * speed * global.difficulty
		
		move_and_slide()

func take_damage() -> void:
	if health > dead:
		health -= damage
	elif health <= dead:
		died()
		queue_free()	
		
func died() -> void:
	global.score += kill_value
	
	
func _player_dmg(ship: CharacterBody2D) -> void:
	ship.take_damage()
