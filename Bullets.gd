extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var Player = preload("res://Player.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("Bullets") # Replace with function body.
	$VisibilityNotifier2D.connect("screen_exited", self, "_on_screen_exited")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	self.position += Vector2(0.35,0).rotated(rotation)

func _physics_process(_delta):
	if ($RayCast2D.is_colliding()):
		print("HIT")
		self.queue_free()
		queue_free()
		get_tree().call_group("Player", "queue_free")
	if ($RayCast2D2.is_colliding()):
		print("HIT")
		self.queue_free()
		queue_free()
		get_tree().call_group("Player", "queue_free")

func _on_screen_exited():
	self.queue_free()
	queue_free()
