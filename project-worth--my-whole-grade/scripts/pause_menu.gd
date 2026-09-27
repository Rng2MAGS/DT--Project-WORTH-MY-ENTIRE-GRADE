extends Control

@export var pause_cooldown: Timer
var can_pause = true
var normal_time = 1
var frozen_time = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Opens pause menu
func _process(_delta: float) -> void:
	if Input .is_action_pressed("ui_pause") and visible == false and can_pause == true:
		visible = true
		Engine.time_scale = frozen_time
		can_pause = false
		pause_cooldown.start()
	elif Input .is_action_pressed("ui_pause") and visible == true and can_pause == true:
		visible = false
		Engine.time_scale = normal_time
		can_pause = false
		pause_cooldown.start()

func _resume_game() -> void:
	visible = false
	Engine.time_scale = normal_time

func _quit_to_menu() -> void:
	Engine.time_scale = normal_time
	get_tree().call_deferred("change_scene_to_file", "res://scenes/main_menu.tscn")

func _pause_cooldown() -> void:
	can_pause = true
