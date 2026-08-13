extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Input .is_action_pressed("ui_esc") and visible == false:
		visible = true
	elif Input .is_action_pressed("ui_esc") and visible == true:
		visible = false




func _on_button_pressed() -> void:
	visible = false
