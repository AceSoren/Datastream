extends KinematicBody2D

export var pos_to_respawn = Vector2(84, 256)

var PlayerScene = load("res://Player.tscn")

func _ready():
	add_to_group("Player")
	var _f = PlayerScene

func get_input(_delta):
	var _vel = Vector2()
	if Input.is_action_pressed("move_right"):
		move_and_slide(Vector2(80, 0))
	if Input.is_action_pressed("move_left"):
		move_and_slide(Vector2(-80, 0))
	if Input.is_action_pressed("move_fore"):
		move_and_slide(Vector2(0, -80))
	if Input.is_action_pressed("move_back"):
		move_and_slide(Vector2(0, 80))
	

func _process(_delta):
	get_input(_delta)

