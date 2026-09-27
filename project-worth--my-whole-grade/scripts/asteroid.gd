extends CharacterBody2D


@export var asteroid: CharacterBody2D
@export var asteroid_scene: PackedScene
@export var pivot: Node2D

const dead = 0

var speed = 300 * global.difficulty
var kill_value: float = 8 * global.difficulty
var health: float = 4 * global.difficulty
var ship: CharacterBody2D
var damage: float = global.damage_multi

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

func _player_dmg(body: CharacterBody2D) -> void:
	body.take_damage()
