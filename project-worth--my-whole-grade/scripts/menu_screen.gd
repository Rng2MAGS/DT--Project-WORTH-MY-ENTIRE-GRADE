extends Control


func _play() -> void:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/background.tscn")



func _settings() -> void:
		get_tree().call_deferred("change_scene_to_file", "res://scenes/background.tscn")


func _quit_game() -> void:
	get_tree().quit()
