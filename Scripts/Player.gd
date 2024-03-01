extends CharacterBody2D

@onready var sprite_2d: AnimatedSprite2D = $Sprite2D

var speed_movement = 300.0
var speed_attack = 1
var damage_attack = 0


func _physics_process(delta: float) -> void:
	movement()

func movement():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed_movement

	if velocity.x == 0 && velocity.y == 0:
		sprite_2d.animation = "idle"
	else:
		sprite_2d.animation = "move"

	move_and_slide()
