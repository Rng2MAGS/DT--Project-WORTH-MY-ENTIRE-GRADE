extends Control

var can_pause = true
@export var pause_cooldown: Timer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
	
func _process(_delta: float) -> void:
	if Input .is_action_pressed("ui_e") and visible == false and can_pause == true:
		visible = true
		Engine.time_scale = 0
		can_pause = false
		pause_cooldown.start()
	elif Input .is_action_pressed("ui_e") and visible == true and can_pause == true:
		visible = false
		Engine.time_scale = 1
		can_pause = false
		pause_cooldown.start()


func _on_button_pressed() -> void:
	visible = false
	Engine.time_scale = 1


func _pause_cooldown() -> void:
	can_pause = true
