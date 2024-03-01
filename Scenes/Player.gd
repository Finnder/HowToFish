extends CharacterBody2D

var speed = 300.0

func _physics_process(delta: float) -> void:
	movement()

func movement():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	move_and_slide()
