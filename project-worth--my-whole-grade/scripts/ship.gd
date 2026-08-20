extends CharacterBody2D


var speed = 500.0
var health: int = 10
var can_shoot: bool = true
var bullet_speed: int = 400
var damage = 1
var dead: int = 0

@export var pivot: Node2D
@export var bullet_spawn: Marker2D
@export var bullet_scene: PackedScene
@export var bullet_timer: Timer
@export var player_health: ProgressBar


func _physics_process(_delta: float) -> void:
	# Define direction
	var direction: Vector2 = Vector2(0.0, 0.0)
	# Get input direction and set the characters' velocity
	direction.x = Input.get_axis("ui_player_left","ui_player_right")
	direction.y = Input.get_axis("ui_player_up","ui_player_down")
		#Prevent excess speed
	velocity = speed * direction.normalized()
	
	pivot.look_at(get_global_mouse_position())
		

	
	if Input .is_action_pressed("ui_shoot") and can_shoot:
		_shooting()
	
	move_and_slide()
	
	
func _bullet_timer() -> void:
	can_shoot = true
	
	
	
func _shooting() -> void:
	var bullet = bullet_scene.instantiate()
	bullet.rotation = pivot.rotation
	bullet.global_position = bullet_spawn.global_position
	add_sibling(bullet)
	can_shoot = false
	bullet_timer.start()

func take_damage() -> void:
	if health > dead:
		health -= damage
		player_health.value = health
		if health <= dead:
			get_tree().call_deferred("change_scene_to_file" , "res://scenes/main_menu.tscn")
	elif health <= dead:
		get_tree().call_deferred("change_scene_to_file" , "res://scenes/main_menu.tscn")
	
	
	
	
	
	
	
	
