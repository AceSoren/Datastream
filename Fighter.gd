extends KinematicBody2D

var vel

func get_input(_delta):
	vel = Vector2()
	if Input.is_action_pressed("move_right"):
		move_and_slide(Vector2(80, 0))
	if Input.is_action_pressed("move_left"):
		move_and_slide(Vector2(-80, 0))
	if Input.is_action_pressed("move_fore"):
		move_and_slide(Vector2(0, -80))
	if Input.is_action_pressed("move_back"):
		move_and_slide(Vector2(0, 80))
	

func _physics_process(delta):
	get_input(delta)
	move_and_slide(vel)

func _input(event):
	if event.is_action_pressed("ui_end"):
		get_tree().quit()
