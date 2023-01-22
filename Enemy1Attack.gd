extends Node2D

var BulletScene = load("res://Bullets.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	rotate(0.2)
	var b = BulletScene.instance()
	b.position = self.position
	b.rotation = self.rotation
	get_parent().add_child(b)
