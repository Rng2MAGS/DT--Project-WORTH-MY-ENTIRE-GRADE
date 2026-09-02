extends Control

@export var money_display: Label
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	money_display.text = "$"+str(global.money)


func _speed() -> void:
	pass # Replace with function body.


func _health() -> void:
	pass # Replace with function body.


func _damage() -> void:
	pass # Replace with function body.


func _fire_rate() -> void:
	pass # Replace with function body.


func _back_to_menu() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/main_menu.tscn")
