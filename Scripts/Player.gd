extends CharacterBody2D

@onready var sprite_2d: AnimatedSprite2D = $Sprite2D

var movement_speed = 300.0

var attack_speed = 1
var attack_damage = 1

func _physics_process(delta: float) -> void:
	movement()

func movement():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * movement_speed

	if velocity.x == 0 && velocity.y == 0:
		sprite_2d.animation = "idle"
	else:
		sprite_2d.animation = "move"

	move_and_slide()
