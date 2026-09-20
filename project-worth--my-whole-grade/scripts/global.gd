extends Node

const reset:int = 0
const score_to_money_conversion_rate:int = 2
const easy: float = .75
const normal: float = 1
const hard: float = 1.5
var score: int = 0
var money: int = 0
var difficulty: float


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if settings.difficulty == 1:
		difficulty = easy
	if settings.difficulty == 2:
		difficulty = normal
	if settings.difficulty == 3:
		difficulty = hard
