extends Control

#Difficulty modes
var Easy 
var Normal
var Hard

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input .is_action_just_pressed("ui_esc"):
		get_tree().call_deferred("change_scene_to_file", "res://scenes/main_menu.tscn")


func _on_back_to_game_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/main_menu.tscn")


func _diffuculty() -> void:
	pass # Replace with function body.
