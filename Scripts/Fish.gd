extends Sprite2D

const SPEED: float = 3

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	move_to_player(Vector2.ZERO)
	
func move_to_player(toward: Vector2) -> void:
	position = position + position.direction_to(toward) * SPEED
