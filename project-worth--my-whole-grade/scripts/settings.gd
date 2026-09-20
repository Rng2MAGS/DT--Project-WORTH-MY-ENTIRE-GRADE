extends Control

#Difficulty modes

@export var difficulty_text: Button

var difficulty: int = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	difficulty_text.text = "Difficulty: Easy Mode"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input .is_action_just_pressed("ui_esc"):
		get_tree().call_deferred("change_scene_to_file", "res://scenes/main_menu.tscn")
	


func _on_back_to_game_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/main_menu.tscn")


func _diffuculty() -> void:
	difficulty += 1
	if difficulty == 4:
		difficulty = 1
	if difficulty == 1:
		difficulty_text.text = "Difficulty: Easy Mode"
	if difficulty == 2:
		difficulty_text.text = "Difficulty: Normal Mode"
	if difficulty == 3:
		difficulty_text.text = "Difficulty: Hard Mode"
