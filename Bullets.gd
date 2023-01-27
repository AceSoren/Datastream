extends Node2D

var Player = preload("res://Player.tscn")

func _ready():
	add_to_group("Bullets") # Replace with function body.
	$VisibilityNotifier2D.connect("screen_exited", self, "_on_screen_exited")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	self.position += Vector2(0.75,0).rotated(rotation)

func _process(_delta):
	if ($RayCast2D.is_colliding()):
		print("HIT")
		self.queue_free()
		queue_free()
		get_tree().call_group("Player", "queue_free")
		get_tree().call_group("Timer", "_respawn()")
	if ($RayCast2D2.is_colliding()):
		print("HIT")
		self.queue_free()
		queue_free()
		get_tree().call_group("Player", "queue_free")
		get_tree().call_group("Timer", "_respawn()")

func _on_screen_exited():
	self.queue_free()
	queue_free()
