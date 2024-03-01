extends CharacterBody2D
#
#export var speed = 100
const speed = 300.0
#var player_position
#var target_position
#onready var player = get_parent().get_node("Player")
#
#func _physics_process(delta):
	#player_position = player.position
	#target_position = (player_position - position).normalized()
	#if position.distance_to(player_position) > 3 :
		#move_and_slide(target_position * speed)
		#look_at(player_position)


#export var speed = 100 
var player_position
var target_position
# Get a reference to the player. It's likely different in your project
@onready var player = get_parent().get_node("Player")
 
func _physics_process(delta):
	
	# Set player_position to the position of the player node
	player_position = player.position
	# Calculate the target position
	target_position = (player_position - position).normalized()
 
	# Check if the enemy is in a 3px range of the player, if not move to the target position
	if position.distance_to(player_position) > 3:
		var vec = target_position * speed
		#velocity.y = 
		#velocity.x = 
		velocity = target_position
		move_and_slide()
		look_at(player_position)




#const JUMP_VELOCITY = -400.0
#
## Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
#
#
#func _physics_process(delta):
	## Add the gravity.
	#if not is_on_floor():
		#velocity.y += gravity * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
#
	#move_and_slide()
