extends Node2D

func _ready():
	pass # Replace with function body.

var BossHP = 400

func _die():
	if BossHP <= 0:
		self.queue_free()
		queue_free()

