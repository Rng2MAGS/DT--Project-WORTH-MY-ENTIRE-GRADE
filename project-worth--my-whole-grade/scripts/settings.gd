extends Control

#Difficulty modes

@export var difficulty_text: Button



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	


func _on_back_to_game_pressed() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/main_menu.tscn")

func _when_settings_opened() -> void:
	difficulty_text.text = "Difficulty: Easy Mode"

func _diffuculty() -> void:
	global.difficulty_button_value += 1
	if global.difficulty_button_value == 4:
		global.difficulty_button_value = 1
	if global.difficulty_button_value == 1:
		difficulty_text.text = "Difficulty: Easy Mode"
	if global.difficulty_button_value == 2:
		difficulty_text.text = "Difficulty: Normal Mode"
	if global.difficulty_button_value == 3:
		difficulty_text.text = "Difficulty: Hard Mode"
