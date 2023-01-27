extends Node2D

var respawn
const PlayerInstance = preload("res://Player.tscn")
var player = PlayerInstance.instance()

func _ready():
	add_to_group("Timer")
	
func _respawn():
	respawn = get_tree().create_timer(10.0)
	respawn.start()
	yield(respawn, "timeout")
	add_child(player)
