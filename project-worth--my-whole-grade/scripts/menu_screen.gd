extends Control
func _ready() -> void:
	global.money += global.score/global.score_to_money_conversion_rate
	global.score = global.reset
func _play() -> void:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/background.tscn")


func _upgrade() -> void:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/upgrade_menu.tscn")



func _settings() -> void:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/settings.tscn")


func _quit_game() -> void:
	get_tree().quit()
