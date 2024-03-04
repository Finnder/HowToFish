extends Control
@onready var fish: Sprite2D = $Fish


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func fish_anim():
	pass

func _on_play_pressed():
	# change the scene
	get_tree().change_scene_to_file("res://Scenes/Combat.tscn");


func _on_options_pressed():
	# change the scene
	get_tree().change_scene_to_file("res://Scenes/Mainmenu.tscn");


func _on_exit_pressed():
	get_tree().quit()


func _on_about_pressed():
	get_tree().change_scene_to_file("res://Scenes/AboutPage.tscn")
