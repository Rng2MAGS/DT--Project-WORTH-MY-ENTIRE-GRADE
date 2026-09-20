extends Node

const reset:int = 0

#Variables for money/score
const score_to_money_conversion_rate:int = 2
var score: int = 0
var money: int = 0

#Variables used to alter difficulty
const easy: float = .75
const normal: float = 1
const hard: float = 1.25
var difficulty: float
var difficulty_button_value: int = 1

#Variables for players upgrades
var num_speed_upgrds: int = 1
var num_health_upgrds: int = 1
var num_damage_upgrds: int = 1
var num_fire_rate_upgrds: int = 1
var speed_multi: float = 1
var health_multi: float = 1
var damage_multi: float = 1
var fire_rate_multi: float = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if difficulty_button_value == 1:
		difficulty = easy
	if difficulty_button_value == 2:
		difficulty = normal
	if difficulty_button_value == 3:
		difficulty = hard
