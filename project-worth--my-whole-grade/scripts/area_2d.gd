extends Area2D

var speed: float = 600

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += transform.x * speed * delta
	

func _bullet_land(body: Node2D) -> void:
	if body.is_in_group("asteroid"):
		body.take_damage()
		queue_free()
