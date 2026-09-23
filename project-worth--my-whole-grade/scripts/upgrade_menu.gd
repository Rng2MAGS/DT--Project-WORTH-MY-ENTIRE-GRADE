extends Control

@export var money_display: Label

var upgrade_increase_margin: int = 1
var upgrade_price: int = 32

@export var speed_text: Button
@export var health_text: Button
@export var damage_text: Button
@export var fire_rate_text: Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	money_display.text = "$"+str(global.money)


func _speed() -> void:
	if global.money >= upgrade_price * global.num_speed_upgrds:
		global.money -= upgrade_price * global.num_speed_upgrds
		global.num_speed_upgrds += upgrade_increase_margin
		global.speed_multi = 1.2 ** global.num_speed_upgrds
		speed_text.text = "Speed: $"+str(upgrade_price * global.num_speed_upgrds)
	else:
		pass

func _health() -> void:
	if global.money >= upgrade_price * global.num_health_upgrds:
		global.money -= upgrade_price * global.num_health_upgrds
		global.num_health_upgrds += upgrade_increase_margin
		global.health_multi = global.num_health_upgrds / 2
		health_text.text = "Health: $"+str(upgrade_price * global.num_health_upgrds)


func _damage() -> void:
	if global.money >= upgrade_price * global.num_damage_upgrds:
		global.money -= upgrade_price * global.num_damage_upgrds
		global.num_damage_upgrds += upgrade_increase_margin
		global.damage_multi = 1.2 ** global.num_damage_upgrds
		damage_text.text = "Damage: $"+str(upgrade_price * global.num_damage_upgrds)


func _fire_rate() -> void:
	if global.money >= upgrade_price * global.num_fire_rate_upgrds:
		global.money -= upgrade_price * global.num_fire_rate_upgrds
		global.num_fire_rate_upgrds += upgrade_increase_margin
		global.fire_rate_multi = 1.2 ** global.num_fire_rate_upgrds
		fire_rate_text.text = "Fire Rate: $"+str(upgrade_price * global.num_fire_rate_upgrds)


func _back_to_menu() -> void:
	get_tree().call_deferred("change_scene_to_file", "res://scenes/main_menu.tscn")
